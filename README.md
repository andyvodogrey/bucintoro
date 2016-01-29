# Bucintoro

### Esercizi sul db 'bucintoro' – classe 5sX – gennaio 2016
    
* Q1 Trova tutti i colori delle barche riservate da Albert
  	```sh
	SELECT b.colore 
	FROM soci AS s, barche AS b, prenotazioni AS p 
	WHERE (p.sid = s.socio_id AND p.bid = b.barca_id) AND s.snome = 'Dustin'; 
	```
    
* Q2. Trova tutti gli identificatori dei soci che hanno un punteggio maggiore 
      di 8 oppure hanno prenotato la barca 103.
	```sh
	SELECT DISTINCT s.socio_id AS INDENTIFICATORI,  s.punteggio  
	FROM soci AS s, prenotazioni AS p, barche as b
	WHERE s.punteggio > 8 or (p.bid = 103 and s.socio_id = p.sid and b.barca_id = p.bid);
	```
    
* Q3. Trova i nomi dei soci che non hanno prenotato una barca e il cui nome 
      contiene la stringa 'storm'. Ordina il risultato in senso crescente.
	```sh
	SELECT s.snome
	FROM soci AS s
	WHERE s.snome LIKE '%storm%' AND s.socio_id NOT IN
    	(SELECT sid 
    	FROM prenotazioni)
    ORDER BY s.snome;
	```
* Q4. Trova gli id dei soci di età superiore a 20 che non hanno prenotato 
      barche il cui nome contenga la stringa 'thunder'.
    ```sh
	SELECT socio_id
	FROM soci AS s
	WHERE eta > 20 AND socio_id NOT IN
        (SELECT sid 
    	FROM prenotazioni, barche
    	WHERE sid = barca_id AND bnome LIKE '%thunder%')
    ORDER BY s.snome;
	```
* Q5. Trova i nomi dei soci che hanno prenotato almeno due barche.
     ```sh
	SELECT s.snome, s.socio_id, COUNT(DISTINCT p.bid)
    FROM soci AS s, prenotazioni as p
    WHERE s.socio_id = p.sid 
    GROUP BY s.socio_id
    HAVING COUNT(*) >= 2;
	```    

* Q6. Trova i nomi dei soci che hanno prenotato tutte le barche.
    ```sh
    SELECT COUNT(DISTINCT p.bid)
    FROM soci AS s, prenotazioni as p
    WHERE s.socio_id = p.sid
    GROUP BY s.socio_id
    HAVING 
	```

* Q7. Trova i nomi dei soci che hanno prenotato tutte le barche che si 
      chiamano iniziando con 'typhoon'.
* Q8. Trova gli id dei soci che hanno un punteggio più alto del socio di nome Bob.
* Q11. Trova il nome e l'età del socio più vecchio.
    
### Comandi Bash

    1  heroku pg:psql --app heroku-postgres-aeeb42bd HEROKU_POSTGRESQL_CRIMSON < create.sql 
    2  heroku pg:psql --app heroku-postgres-aeeb42bd HEROKU_POSTGRESQL_CRIMSON < insert.sql 
    3  heroku pg:psql --app heroku-postgres-aeeb42bd HEROKU_POSTGRESQL_CRIMSON
    4  git status
    5  git add create.sql insert.sql 
    6  git commit -m "Testo esercizio."   
    7  git push -u origin master
    8  git add README.md 
    9  git commit -m "add readme1.0" 
    10 git push

### Commandi SQL
    
    1 SET search_path TO bucintoro;
    2 