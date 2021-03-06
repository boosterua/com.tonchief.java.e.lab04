# com.tonchief.epmprojbank
/* Created by ton chief. */


###*ТРЕБОВАНИЯ К ВЫПОЛНЕНИЮ ПРОЕКТА*

1. Информацию о предметной области хранить в БД (рекомендуется MySQL), для доступа использовать JDBC.
2. На основе сущностей предметной области создать классы их описывающие.
3. При реализации алгоритмов бизнес-логики использовать шаблоны GoF (Factory Method, Command, Singleton, Builder, Strategy) и Model-View-Controller.
4. Используя сервлеты и JSP, реализовать функциональности, предложенные в постановке конкретной задачи.
5. При разработке JSP использовать собственные теги.
6. При разработке бизнес логики использовать сессии и фильтры.
7. Приложение должно поддерживать работу с кириллицей, в том числе и при хранении информации в БД.
8. Классы и методы должны иметь отражающую их функциональность названия и должны быть грамотно структурированы по пакетам.
9. Оформление кода должно соответствовать Java Code Convention.
10. При разработке использовать журналирование событий (Log4j).
11. Код должен содержать комментарии хотя бы частично.


##Задача
### 2.	Система **Платежи**. ###
Клиент имеет одну или несколько **Кредитных Карт**, каждая из которых соответствует некоторому **Счету** в системе платежей.
**Клиент** может при помощи **Счета** сделать **Платеж**, заблокировать **Счет** и пополнить **Счет**.
**Администратор** снимает блокировку.



:+1:

## Development ##
-------------------
 *Data Structure & Services:*
```    
     Client-> Cards[] <-Accounts[]
     
     Client
     -> makePayment(details: from, to, amount, descr);
     -> replenishAccount(acctId, amount, source[anotherAccount|cash]);
     -> blockAccount(acctId);
     -> + register(); // fill out form including client id fields as well as type of card requested.
     -> showTransactions
     
     Administrator
     +> blockAccount();   //+ListAccounts
     +> removeAccountBlock(); 
     +> issueNewCard(); // List Fresh Users 
     -> listClientsByCardType(VisaClassic); list all clients with Visa Classic Cards
     -> listClientsWithBlockedAccounts();
     -> approveClient(); // incl.issue new account and card.
     -> listCardsOfType;
     

```
*DB:*
```    
          Client [name, id, cardId, role:adm|usr]
          Cards [id, nr, refAcctId, expDate]
          Accounts [id, nr, clientId, isActive]
          Payments [id, dtAcct, crAcct, amt, date]
```


Service.Client: 
 - make payment: choose account*, choose action [block,replenish,makepayment]. *select accounts

TODO: в алг бизнес-логики использовать шаблоны GoF (Factory Method, Command, Singleton, Builder, Strategy) и MVC.
TODO: 5. При разработке JSP использовать собственные теги. 
TODO: 6. При разработке бизнес логики использовать сессии и фильтры.
TODO: Тесты!
TODO: PWD Hash 
//TODO - Filters - check for form validity - create some util methods for general checks!!
//TODO: set Cookie with lang. Session is higher priority than cookie, ck gets overwritten by sess



To be continued...


Stack of tech
Java-Core:Threads, JDBC (PS+Transactions), JSP, JSTL, Filter, FrontEnd:Bootstrap,JavaScript,Jquery,CSS
Multi-threading: new user> customer || new acct
 
 Used technologies: , MVC Pattern, Factory Pattern, Log4j, Junit, MySQL, TomCat pool connection. 
Pres.plan:
UsersDAOimpl


Interesting: custom tag (print html table from list of list, passing params custom headers, styling of the table),
 transactions in mysql [check balance + update balance in 2 accts + enter payment]
 

WorkFlow Demo:
Register; change language; see fees; register
Login 
  - see that account has not been approved yet;
  - try doing operations 
  - order another account / check that it's blocked

Login as administrator (2@2) in incognito window
  list clients - show all 3 ways
  Approve new user; unblock accounts
  
Relogin as user;
  wrong password
  top up account
  transfer bigger amount than avilable
  transfer amount b/w own accounts; 
  check balances of both accts
  see history - find fee as well
  block account
  
  
   
  
  