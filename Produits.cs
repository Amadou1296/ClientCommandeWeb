using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClientCommandeWeb
{

    public class Produits
    {
        private int freight;
        private string productname;
        private int prixu, quantite, discount;
        
        //constructeur
        public Produits(int freight,string productname,int prixu,int quantite,int discount)
        {
            this.freight = freight;
            this.discount = discount;
            this.productname = productname;
            this.prixu = prixu;
            this.quantite = quantite;
        }

        //getteurs and setteurs

        public int Freight
        {
            get { return freight; }   // get method
            set { freight = value; }
        }

        public int Discount
        {
            get { return discount; }   // get method
            set { discount = value; }
        }

        public int Prixu
        {
            get { return prixu; }   // get method
            set { prixu = value; }
        }

        public int Quantite
        {
            get { return quantite; }   // get method
            set { quantite = value; }
        }

        public string Productname
        {
            get { return productname; }   // get method
            set { productname = value; }
        }
    }


    
}