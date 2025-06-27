#!/bin/sh

# Esperar a la base de datos si está definida
if [ "$DB_TYPE" = "postgresdb" ]; then
  echo "Esperando a PostgreSQL..."
  until nc -z -v -w30 "$DB_POSTGRESDB_HOST" "$DB_POSTGRESDB_PORT"; do
    echo "Esperando..."
    sleep 5
  done
  echo "PostgreSQL disponible!"
fi

# Iniciar n8n
exec n8n