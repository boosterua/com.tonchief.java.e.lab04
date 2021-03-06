package model.entity;


import model.dao.exceptions.MySqlPoolException;
import model.dao.factory.DAOFactoryImpl;
import model.dao.interfaces.AccountsDAO;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;


public class Account extends Entity {
    private int id;
    private String number; /* number is also a name of account. Always a number [Ususally 10..16 digits]. String data type in entity, Long in dao. */
    private int clientId;
    private boolean blocked;
    private BigDecimal balance;
    private List<Card> cards = new ArrayList<>();

    private AccountsDAO accountsDAO = DAOFactoryImpl.getInstance().getAccountsDAO();

    public Account() {
        this.blocked = false;
        this.balance = BigDecimal.ZERO;
        this.number = "";
    }

    /**
     * @param aid Account Id:int
     * @param num Account Nunber : String (Long in db)
     * @param blk Account blocked state : boolean
     */
    public Account(Integer aid, String num, Boolean blk) {
        this();
        this.blocked = blk;
        this.number = num;
        this.id = aid == null ? 0 : aid;
    }

    public Account(Integer aid, String num, Boolean blk, int clid) {
        this(aid, num, blk);
        this.clientId = clid;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return number;
    }

    public String getNumber() {
        return number;
    }

    public void setName(String name) {
        this.number = name;
    }

    public boolean getBlocked() {
        return blocked;
    }

    public void setBlock(boolean block) throws MySqlPoolException {
        this.blocked = block;
        //accountsDAO.setBlock(this);
    }

    public int getClientId() {
        return clientId;
    }

    public void setClientId(int clientId) {
        this.clientId = clientId;
    }

    public void replenish(BigDecimal amt) {
        this.balance = balance.add(amt);
    }

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }


    public List<Card> getCards() {
        return cards;
    }

    public void setCards(List<Card> cards) {
        this.cards = cards;
    }

    public void addCard(Card card) {
        this.cards.add(card);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Account account = (Account) o;

        if (id != account.id) return false;
        return number.equals(account.number);
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + number.hashCode();
        return result;
    }

    public String toString() {
        return toString(id, number, "BLK:" + blocked, "CLid:" + clientId, "Bal:"+ (balance==null?"n/a":balance));
    }

    // //TODO:equals / hashcode

}
