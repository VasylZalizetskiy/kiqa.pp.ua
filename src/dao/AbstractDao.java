package dao;

import java.sql.Connection;

import jdbc.ConnectionManager;

/**
 * @author sergey
 */
public class AbstractDao {

    protected Connection getConnection() {
        return ConnectionManager.getInstance().currentConnection();
    }

    protected void close(AutoCloseable... closeables) {
        for(AutoCloseable ac : closeables) {
            close(ac);
        }
    }

    protected void close(AutoCloseable c) {
        if(c == null) return ;
        try {
            c.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
