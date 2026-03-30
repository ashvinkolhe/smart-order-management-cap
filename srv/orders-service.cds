using { enterprise.orders as db } from '../db/schema';

service OrderService @(requires: 'Admin') {

 entity Customers  as projection on db.Customers;
 entity Products   as projection on db.Products;

 @odata.draft.enabled
 entity Orders as projection on db.Orders;

 entity OrderItems as projection on db.OrderItems;

 event OrderCreated {
     orderID : UUID;
     orderDate : Date;
     status : String;
 }

}