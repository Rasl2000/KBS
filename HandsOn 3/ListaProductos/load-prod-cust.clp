
;;Defining a template for representing/modelling products in Jess Working Memory

(deftemplate product
  (slot part-number)
  (slot name)
  (slot category)
  (slot price)
)

;;Storing 

(deffacts products 
        (product (name CocaCola) (category Refresco) (part-number 1234) (price 12.50))
        (product (name Fanta) (category Refresco) (part-number 1235) (price 10.00))
        (product (name Sabritas) (category Papas) (part-number 2345) (price 20.50))
)

;;Defining a template 

(deftemplate customer
  (slot customer-id)
  (multislot name)
  (multislot address)
)

;;Storing three customers 

(deffacts customers
  (customer (customer-id 101) (name Rodrigo) (address San Jacinto 925))
  (customer (customer-id 102) (name Samuel) (address San Rafael 702))
  (customer (customer-id 103) (name Karina) (address Revolucion 1500))
)

