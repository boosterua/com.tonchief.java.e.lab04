package model.dao.interfaces;

import model.dao.exceptions.ExceptionDAO;

import java.util.ResourceBundle;

public interface EntityDAO<T extends model.entity.Entity> {
   ResourceBundle BUNDLE = ResourceBundle.getBundle("database.psqueries");

    //void createTableIfNotExist();
    Integer insert(Object tdata) throws ExceptionDAO;
    boolean update(int id, T data) throws ExceptionDAO;
    boolean delete(long id) throws ExceptionDAO;
    T getById(Integer id) throws ExceptionDAO;


//    List<T> findAll() throws ExceptionDAO;


}

