!#/bin/bash

# The was written coutesy of this video on youtube
# https://www.youtube.com/watch?v=DTKrWUm_vJg&ab_channel=CLOUDLEARNHUB
# Thanks CLOUD LEARN HUB!

# Ask and accept for user's name! 
clear
echo "Please what is your name ?"
read name

# validate input is not blank.

while [ -z $name]; do
clear
echo "oh oh!"
echo "You forgot to tell us your name!"
read name
done


# Ask for and accept user's favourite colour.
clear
echo "Thanks $name"
echo "$name, what is your favourite colour ?"
read colour
while [ -z $colour]; do 
clear

# validate input is not blank.
echo "oh oh! "
echo "You forgot to tell us your favourite color!"
read colour
done

clear
echo "$name, you have got good taste in colours, $colour is a lovely one!"
echo "standby while we save the details."
echo "$name's favourite colour is $colour!" >> namencolour.db
echo "Press enter to continue"
read

clear
echo " Thank you $name"
