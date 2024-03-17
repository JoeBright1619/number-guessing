#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

answer=$(($RANDOM * 1000 / 32767 + 1))

echo -e "Enter your username: "
read username

check_username=$($PSQL "select username from userData where username='$username'")

if [[ ! -z $check_username ]]
then
#user=$($PSQL "select username from userdata where username='$username'")
games_played=$($PSQL "select count(username) from userData where username='$username'")
best_game=$($PSQL "select min(guesses) from userData where username='$username'")
echo -e "\nWelcome back, $username! You have played $games_played games, and your best game took $best_game guesses.\n"
echo -e "\nGuess the secret number between 1 and 1000:"
read userGuess

else
echo -e "\nWelcome, $username! It looks like this is your first time here."
echo -e "\nGuess the secret number between 1 and 1000:"
read userGuess


fi

execute(){
while (( $userGuess != $answer ))
do

if (( $userGuess > $answer ))
then


echo -e "\nIt's lower than that, guess again:\n"
read userGuess
(( guessCount++ ))

elif (( $userGuess < $answer ))
then


echo -e "\nIt's higher than that, guess again:\n"
read userGuess
(( guessCount++ ))

fi

while [[ ! $userGuess =~ ^[0-9]+$ ]]
do

echo -e "\nThat is not an integer, guess again:\n"
read userGuess

done

done
insert_data=$($PSQL "insert into userdata(username,guesses)values('$username',$guessCount)")
echo -e "\nYou guessed it in $guessCount tries. The secret number was $answer. Nice job!\n"
}

if [[ $userGuess =~ ^[0-9]+$ ]]
then
guessCount=1
execute
else
while [[ ! $userGuess =~ ^[0-9]+$ ]]
do

echo -e "\nThat is not an integer, guess again:\n"
read userGuess

done
guessCount=1
execute
fi