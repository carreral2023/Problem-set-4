;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Sort criteria problem set|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct song (length song-title artist-name year))

;; A song is a (make-song Number String String number)
;; representing the length in minutes and seconds
;; An SortCriteria is function [Song List -> Boolean]
;; that determines if the song should come before the second song

(define s1
  (make-song 3.24 "Animal" "Martin" 2003))
(define s2
  (make-song 2.13 "Winter" "Greg"  2000))


(define los (list s1 s2 s3))

;; Song Sort-Criteria [Listof Song] -> SortCriteria
;; compare two songs and determine if the first song should come
;; before the second song

;;need a function to determine length


