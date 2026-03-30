namespace enterprise.orders;

entity Customers {
 key ID : UUID;
 name   : String;
 email  : String;
 country: String;
}

entity Products {
 key ID : UUID;
 name   : String;
 price  : Decimal(9,2);
 stock  : Integer;
}

entity Orders {
 key ID      : UUID;
 orderDate   : Date;
 status      : String;
 customer    : Association to Customers;
 items       : Composition of many OrderItems
               on items.order = $self;
}

entity OrderItems {
 key ID    : UUID;
 order     : Association to Orders;
 product   : Association to Products;
 quantity  : Integer;
}