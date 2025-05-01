#!/bin/bash

# Script para calcular el interés simple

if [ "$#" -ne 3 ]; then
  echo "Uso: $0 <capital> <tasa> <tiempo>"
  exit 1
fi

capital=$1
tasa=$2
tiempo=$3

interes=$(echo "scale=2; ($capital * $tasa * $tiempo) / 100" | bc)
echo "El interés simple es: $interes"
