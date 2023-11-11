;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Inventory Management System problem set|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Inventory Management System

(define-struct order (title price quantity))

; An order is a (make-order String Number Number)
; representing an order at of price in dollars
; An AccountBalance is a number representing the bookstores current
; running positive balance in dollars
; An OrderProcessor is a function [Order AcctBalance -> AcctBalance
; that computes the new balance
; A List of orders (loo) is a (listof order)

(define o1
  (make-order "ABC" 12.34 5))
(define o2
  (make-order "DFG" 10.54 3))
(define o3
  (make-order "JIK" 14.23 4))
(define o4
  (make-order "OKL" 9.37 7))

(define loo (list o1 o2 o3 o4))

(define int-acct-balance 10)

;; Order Processor AcctBalance [Listof Order] -> Acctbalance
;; Calculate the consequences of the given order and bookshelfs given acctbalance

;; acct balance after processing the rest of the list

(define (acct-balance a-loo)
  (if (empty? a-loo)
      (* (sum-loo a-loo) (loo-len a-loo))))

#|
define (avg-loq a-loq)
(if (empty? a-loq)
    (* (sum-lo0 a-loo) (loo-len a-loo)))

;(define (proc-order 

(define (proc-order op b0 loa)
  (cond
    [(empty? loo) b0]
    [(cons? loa)
     (op (first loo) (proc-order op b0 (rest loo)))]))

;(define A-GLIST (cons "milk"
;(cons "apples"
;E-GLIST)))

; [List-of [list String Number]] String -> Number

;(check-expect (equal? E-GLIST) #false)

|#