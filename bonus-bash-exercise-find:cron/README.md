# spiegazione codice
## JOB="30 6 * * 1 find /var/logs -type f -ctime +30 -delete > /dev/null 2>&1"
assegna alla variabile JOB una schedule secondo la sintassi di cron (min ore giorno_mese mese giorno_settimana) cerca dentro la directory "/var/logs" file ("-type f") con vita superiore ai 30gg ("-ctime +30") e li elimina ("-delete"), ignora poi eventuali errori.
## crontab -l 2>/dev/null;
legge il contenuto del file crontab e "2>/dev/null" ignora eventuali errori come
"file non esistente"
## echo "${JOB}"
scrive in crontab il nuovo job
## | crontab -
sovrascrive il file 