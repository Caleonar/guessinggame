# Definisci la funzione che verifica se l'input dell'utente è un intero
function is_valid_input() {
  # Controlla se l'input dell'utente è un intero maggiore di 0
  if [[ "$1" =~ ^[0-9]+$ && "$1" -gt 0 ]]; then
    return 0
  fi
  return 1
}

# Ottieni il numero di file nella directory corrente
num_files=$(ls -l | grep "^-" | wc -l)

# Chiedi all'utente di indovinare il numero di file nella directory corrente
echo "Indovina il numero di file nella directory corrente:"
read user_guess

# Continua a chiedere all'utente di indovinare fino a quando non indovina il numero corretto
while ! is_valid_input $user_guess || [[ "$user_guess" -ne "$num_files" ]]; do
  if [[ "$user_guess" -lt "$num_files" ]]; then
    echo "Troppo basso. Riprova:"
  else
    echo "Troppo alto. Riprova:"
  fi
  read user_guess
done

# L'utente ha indovinato il numero corretto
echo "Congratulazioni, hai indovinato il numero di file nella directory corrente!"

