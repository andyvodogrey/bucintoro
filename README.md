# Bucintoro

   ## Esercizi sul db 'bucintoro' – classe 5sX – gennaio 2016
    
    Q1. Trova tutti i colori delle barche riservate da Albert
    Q2. Trova tutti gli identificatori dei soci che hanno un punteggio maggiore di 8 oppure hanno prenotato la barca 103.
    Q3. Trova i nomi dei soci che non hanno prenotato una barca e il cui nome contiene la stringa 'storm'. Ordina il risultato in senso
        crescente.
    Q4. Trova gli id dei soci di età superiore a 20 che non hanno prenotato barche il cui nome contenga la stringa 'thunder'.
    Q5. Trova i nomi dei soci che hanno prenotato almeno due barche.
    Q6. Trova i nomi dei soci che hanno prenotato tutte le barche.
    Q7. Trova i nomi dei soci che hanno prenotato tutte le barche che si chiamano iniziando con 'typhoon'.
    Q8. Trova gli id dei soci che hanno un punteggio più alto del socio di nome Bob.
    Q11. Trova il nome e l'età del socio più vecchio.
    
### Comandi eseguiti

    1  heroku pg:psql --app heroku-postgres-aeeb42bd HEROKU_POSTGRESQL_CRIMSON < create.sql 
    2  heroku pg:psql --app heroku-postgres-aeeb42bd HEROKU_POSTGRESQL_CRIMSON < insert.sql 
    3  heroku pg:psql --app heroku-postgres-aeeb42bd HEROKU_POSTGRESQL_CRIMSON
    4  git status
    5  git add create.sql insert.sql 
    6  git commit -m "Testo esercizio."   
    7  git push -u origin master
