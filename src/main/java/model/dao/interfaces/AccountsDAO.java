package model.dao.interfaces;

import model.dao.exceptions.ExceptionDAO;
import model.dao.exceptions.MySqlPoolException;
import model.entity.Account;

import java.sql.SQLException;
import java.util.List;

public interface AccountsDAO extends EntityDAO {
    boolean isBlocked(Account account) throws MySqlPoolException, SQLException;
    boolean setBlock(Account account) throws MySqlPoolException;
    List findAllByClient(model.entity.Client client) throws  ExceptionDAO;
}