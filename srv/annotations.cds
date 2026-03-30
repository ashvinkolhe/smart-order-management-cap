using OrderService from './orders-service';

annotate OrderService.Orders with {

    orderDate @UI.LineItem: [{ position: 10 }];
    status    @UI.LineItem: [{ position: 20 }];

    customer  @UI.LineItem: [{ position: 30 }];

};

annotate OrderService.Products with {

    name  @UI.LineItem: [{ position: 10 }];
    price @UI.LineItem: [{ position: 20 }];
    stock @UI.LineItem: [{ position: 30 }];

};

annotate OrderService.Orders with @UI.HeaderInfo: {
    TypeName: 'Order',
    TypeNamePlural: 'Orders',
    Title: {
        Value: orderDate
    }
};

annotate OrderService.Orders with {

  orderDate @UI.Identification: [{ position: 10 }];
  status    @UI.Identification: [{ position: 20 }];

};