

;; Defining a rule for finding customer names and printing such names
(defrule MAIN::my-rule11
   (customer (name ?n)) => (printout t "Customer name found:" ?n  crlf ))

;; Defining a rule for finding a customer's data via their customer-id
;; you can replace the customer-id 101 with either 102 or 103 (see deffacts customers)
(defrule MAIN::my-rule12
   ?c <- (customer (customer-id 101))
   =>
  (printout t "customer-id 101 belongs to:: " ?c.name " with address:: " ?c.address crlf))


;;Defining a rule for finding "electronic products"
(defrule MAIN::my-rule13
   (product (category Refresco) (name ?name))
   =>
   (printout t "Refresco product found: " ?name crlf))


(defrule MAIN::my-rule14
   (not (product (category Papas) {price < 10} (name ?n)))
   =>
   (printout t "No tenemos papas tan baratas" crlf ))


;; Defining a rule for finding 
(defrule MAIN::my-rule15
   (product (category Papas) {price < 30} (name ?n))
   =>
   (printout t ?n " Son mas bartas de 30" crlf ))



