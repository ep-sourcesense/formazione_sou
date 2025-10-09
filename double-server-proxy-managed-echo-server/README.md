# Infrastruttura Echo-Server con Proxy Switch

## Descrizione

L'infrastruttura è composta da:

- **Due macchine Linux Debian**: `vm1` e `vm2`  
- **Un server proxy** che gestisce il traffico in entrata

## Funzionamento

- Sulle macchine `vm1` e `vm2` è installato ed eseguito un **echo-server Docker**, esposto sulla porta **3000:80**.
- Il **server proxy** esegue uno **script Bash** che effettua uno **switch tra `vm1` e `vm2` ogni 60 secondi**, reindirizzando il traffico da una macchina all’altra.

## Test di funzionamento

Per inviare una richiesta di prova al proxy, è possibile utilizzare il comando:

```bash
curl http://192.168.56.100/ | jq
