#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "~~~ Number Guessr ~~~\n"

SECRET_NUMBER=$((1 + $RANDOM % 1000))

echo Enter your username:
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

if [[ $USER_ID ]]
then
  GAMES_PLAYED=$($PSQL "SELECT count(*) FROM games WHERE user_id=$USER_ID")
  BEST_GAME=$($PSQL "SELECT min(guesses) FROM games WHERE user_id=$USER_ID")

  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."

else
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  # insert new user
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")

  # get user id
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
fi

GUESS_COUNT=0

GAME_LOOP() {
  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi

  read GUESS

  GUESS_COUNT=$((GUESS_COUNT+1))

  if [[ ! $GUESS =~ ^([1-9][0-9]{0,2}|1000)$ ]]
  then
    GAME_LOOP "That is not an integer, guess again:"
  else
    # check guess vs secret number
    if [[ $GUESS -eq $SECRET_NUMBER ]]
    then
      # guessed correctly
      echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"

      INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(guesses, user_id) VALUES($GUESS_COUNT, $USER_ID)")
    elif [[ $GUESS -lt $SECRET_NUMBER ]] 
    then
      # guess is less than secret
      GAME_LOOP "It's higher than that, guess again:"
    elif [[ $GUESS -gt $SECRET_NUMBER ]]
    then
      # guess is higher than secret
      GAME_LOOP "It's lower than that, guess again:"
    fi
  fi
}

echo -e "\nGuess the secret number between 1 and 1000:"
GAME_LOOP

