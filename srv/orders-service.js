module.exports = (srv) => {

  const { Orders } = srv.entities;

  srv.after('CREATE', Orders, async (data) => {

      const eventPayload = {
          orderID: data.ID,
          orderDate: data.orderDate,
          status: data.status
      };

      await srv.emit('OrderCreated', eventPayload);

      console.log("Event emitted: OrderCreated", eventPayload);

  });

};