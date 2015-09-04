/**
 *
 */
package services;


//import java.util.Arrays;

import java.util.EnumSet;
import java.util.List;

import objects.User;
import jdbc.ConnectionManager;
import dao.UsersDao;

import errors.AuthenticationExeption;
import errors.ValidationException;

public class UsersService {

    private static final UsersService instance = new UsersService();
    
    private final UsersDao usersDao = new UsersDao(); //ADDED!!!
    private final ConnectionManager cm = ConnectionManager.getInstance(); //ADDED!!!

    private UsersService() {}

    public static UsersService getInstance() {
        return instance;
    }

    
    public User getUserByLogin(String login) {
//    	List<User> allUsers=getUsers();
//    	
//    	for (User u : allUsers){
//    		if(u.getLogin().equalsIgnoreCase(login))
//    		{
//    			return u;
//    		} 	
//    	}
//    	return null;
    	try {
            User u = usersDao.getByLoginOrEmail(login);
            cm.commitTransaction();
            return u;
        } catch (Exception e) {
            cm.rollbackTransaction();
            throw e;
        }
     }

    public User login(String login, String password) throws AuthenticationExeption {
        
        try {
        	
            //User user = getUserByLogin(login);
        	User user = usersDao.getByLoginOrEmail(login);

            if(user == null || !user.getPassword().equals(password)) {
                throw new AuthenticationExeption("Wrong login or password");
            }
            
            cm.commitTransaction(); //ADDED!!!
            
            return user;
                        
        } catch (Exception e) {
        	
        	cm.rollbackTransaction(); //ADDED!!!
            
        	throw e;
        }
    }

    public List<User> getUsers(int offset, int limit)  throws ValidationException {
        if(offset < 0)
            throw new ValidationException("offset", "Offset can't be negative");

        if(limit < 0)
            throw new ValidationException("limit", "Limit can't be negative");
        
//    	return Arrays.asList(
//    		new User ("the_mark7", "the_mark7@gmail.com","avatar1", "mark"),
//            new User("ash11927", "ash11927@gmail.com", null, "ash"),
//            new User("audann84", "audann84@gmail.com", "avatar3", ""));
    	try {

            List<User> users = usersDao.getAll(offset, limit);
            cm.commitTransaction();

            return users;
        } catch (Exception e) {
            cm.rollbackTransaction();
            throw e;
        }
    	
    }  
    
    public void setAvatar(long userId, String fileName) {
        try {
            usersDao.setAvatar(userId, fileName);
            cm.commitTransaction();
        } catch (Exception e) {
            cm.rollbackTransaction();
            throw e;
        }
    }

  // method 'register' is not used in the current project
    public User register(String login, String email, String password) throws ValidationException {
        
        User u = new User(login, email, password);
        u.setPermissions(EnumSet.of(User.Permission.USER));

        try {
            usersDao.create(u);
            usersDao.addPermission(u.getId(), User.Permission.USER);
            cm.commitTransaction();
        } catch (Exception e) {
            cm.rollbackTransaction();
            throw e;
        }

        return u;
    }
   
   
}
