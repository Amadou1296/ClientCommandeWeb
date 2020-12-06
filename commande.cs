using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClientCommandeWeb
{
    public class commande
    {
        private string customerID, employeeName, orderDate, requiredDate, productName;
        private int freight, unitPrice, quantity, discount;

        public commande(string customerID, string employeeName, string orderDate, string requiredDate, string productName, int freight
            , int unitPrice, int quantity, int discount)
        {
            this.customerID = customerID;
            this.employeeName = employeeName;
            this.orderDate = orderDate;
            this.requiredDate = requiredDate;
            this.productName = productName;
            this.freight = freight;
            this.unitPrice = unitPrice;
            this.quantity = quantity;
            this.discount = discount;
        }

        //getteurs and setteurs

        public string CustomerID
        {
            get { return customerID; }
            set { customerID = value; }
        }

        public string EmployeeName
        {
            get { return employeeName; }
            set { employeeName = value; }
        }

        public string OrderDate
        {
            get { return orderDate; }
            set { orderDate = value; }
        }

        public string RequiredDate
        {
            get { return requiredDate; }
            set { requiredDate = value; }
        }

        public string ProductName
        {
            get { return productName; }
            set { productName = value; }
        }


        public int Freight
        {
            get { return freight; }
            set { freight = value; }
        }

        public int UnitPrice
        {
            get { return unitPrice; }
            set { unitPrice = value; }
        }
        public int Quantity
        {
            get { return quantity; }
            set { quantity = value; }
        }
        public int Discount
        {
            get { return discount; }
            set { discount = value; }
        }

    }
}