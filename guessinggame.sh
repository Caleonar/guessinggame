#!/bin/bash

function is_valid_input() {
  if [[ "$1" =~ ^[0-9]+$ && "$1" -ge 0 ]]; then
    return 0
  fi
  return 1
}

num_files=$(ls -1a | wc -l)

echo "Indovina il numero di file nella directory corrente:"
read user_guess
while ! is_valid_input $user_guess || [[ "$user_guess" -ne "$num_files" ]]; do
  if ! is_valid_input "$user_guess"; then
    echo "Devi inserire un numero! Riprova:"
  elif [[ "$user_guess" -lt "$num_files" ]]; then
    echo "Troppo basso. Riprova:"
  else
    echo "Troppo alto. Riprova:"
fi
  read user_guess
done

echo "Congratulazioni, hai indovinato il numero di file nella directory corrente!"
