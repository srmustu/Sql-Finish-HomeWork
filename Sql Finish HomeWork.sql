--film tablosundan 'K' karakteri ile başlayan en uzun ve replacenet_cost u en düşük 4 filmi sıralayınız.

--SELECT title , length , replacement_cost FROM film
--WHERE title LIKE 'K%'
--ORDER BY length DESC , replacement_cost ASC
--LIMIT 4;
-----------------------------------------------------------------------------------------------------

--film tablosunda içerisinden en fazla sayıda film bulunduran rating kategorisi hangisidir?

--SELECT rating , COUNT(*) FROM film
--GROUP BY rating
--ORDER BY COUNT(*) DESC;
--------------------------------------------------------------------------------------------------------


--cuStomer tablosunda en çok alışveriş yapan müşterinin adı nedir?
--SELECT first_name , last_name , SUM(amount) FROM customer
--JOIN payment ON customer.customer_id = payment.customer_id
--GROUP BY payment.customer_id , first_name, last_name
--ORDER BY SUM(amount) DESC;
-----------------------------------------------------------------------------------------------------------

--category tablosundan kategori isimlerini ve kategori başına düşen film sayılarını sıralayınız.

--SELECT category.name , COUNT(*) FROM category
--JOIN film_category ON category.category_id = film_category.category_id
--JOIN film ON film.film_id = film_category.film_id
--GROUP BY category.name
--ORDER BY COUNT(*) DESC;
----------------------------------------------------------------------------------------------------


--film tablosunda isminde en az 4 adet 'e' veya 'E' karakteri bulunan kç tane film vardır?

--SELECT COUNT(*) FROM film
--WHERE title ILIKE '%E%E%E%E%'; 
-----------------------------------------------------------------------------------------------------