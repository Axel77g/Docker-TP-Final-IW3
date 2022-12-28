# Configuration

## Serveur 1

Copier le fichier `volumes/www/html/.env.example` et renommé le `.env`

## Serveur 2

Copier le fichier `volumes/www2/html/.env.example` et renommé le `.env`

# Lancement

Pour lancer les deux serveurs il suffit de lancer la commande

```bash
docker compose up
```

Ensuite rendez-vous a l'addresse `http://localhost` pour accéder au serveur 1 et `http://localhost:3000` pour accéder au serveur 2
