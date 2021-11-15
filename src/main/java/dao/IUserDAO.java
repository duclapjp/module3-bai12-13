package dao;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserDAO {
    public void insertUser(User user) throws SQLException;
    public User selectUser(int id);
    public List<User> selectAllUsers();
    public boolean deleteUser(int id) throws SQLException;
    public boolean updateUser(User user) throws SQLException;
    public List<User> selectUserByCountry(String country) throws SQLException;
    public List<User>  sortByName() throws SQLException;
    User getUserById(int id) throws SQLException;
    void insertUserStore(User user) throws SQLException;
    void addUserTransaction(User user, int [] permision) throws SQLException;
    public void insertUpdateWithoutTransaction();
    public List<User> showUserList() throws SQLException;
    public  boolean editUser(User user) throws SQLException;
    public boolean deleteByProcedure(int id) throws SQLException;
}
