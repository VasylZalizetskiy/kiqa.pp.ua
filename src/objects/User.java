package objects;

import java.util.EnumSet;


public class User {
		
	public enum Permission {
		USER, MODERATE_POSTS, MANAGE_USERS;
	}

	
	private long id;
	private String login;
	private String password;
	private String email;
	private String hasAvatar;
	private EnumSet<Permission> permissions;
	
	
	public User(long id, String login, String email) {
		this(0L, login, email, null, null); 
	}
	
	public User(String login, String email, String password) {
		this(0L, login, email, null, password); 
	}
	
	public User(long id, String login, String email,  String hasAvatar, String password) {
		this.id = id;
		this.login = login;
		this.password = password;
		this.email = email;
		this.setHasAvatar(hasAvatar); 
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHasAvatar() {
		return hasAvatar;
	}

	public void setHasAvatar(String hasAvatar) {
		this.hasAvatar = hasAvatar;
	}

	
	public EnumSet<Permission> getPermissions() {
		return permissions;
	}

	public void setPermissions(EnumSet<Permission> permissions) {
		this.permissions = permissions;
	}

	

	
}  