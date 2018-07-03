#!/bin/sh

#---------------#
# Create Shows Folders #
# v0.2          #
#---------------#

#Env-Var
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

#Var
showName=""
showSeason=""
showEpisodeNumber=""
showSuffix=""
folderName=""

#Get Informations
#Ask for Shows name
read -p "Enter the Shows Name (Eg. The.Show.Name): " showName

#Ask for Season Number
while [ ${#showSeason} -lt 2 ]
do
    read -p "Enter the Shows Season-Number: " showSeason

    if [ ${#showSeason} -lt 2 ]
    then
	echo "Must be at least 2 digits long! Eg: 01"
    fi
done

#Ask for Number of Episodes
read -p "Enter how many Episodes the Show has: " showEpisodeNumber

#Ask for Show Suffix (Eg. 1080p.NetflixHD....)
read -p "Enter the Shows info Suffix (Eg. 1080p.NetflixHD...)" showSuffix

#Debug
#echo $showName
#echo $showSeason
#echo $showEpisodeNumber
#echo $showSuffix

#Create folders for every Episode
i=1
while [ $i -le $showEpisodeNumber ]
do
    #echo $i

    #Make Episode Number 2 digits long
    i2digits="0${i}"
    #echo $i2digits

    #Create folder name
    folderName=$showName".S"$showSeason"E"$i2digits.$showSuffix
    if [ $i -le 1 ]
    then
    	echo "Folders will look like:"
    fi
    echo "\033[31m"$folderName "\033[0m"

    #Confirm
    if [ $i -le 1 ]
    then
	echo "Folder will be created in following directory:"
    	pwd
	
	while true; do
	    read -p "Continue to create Folders?" yn
	    case $yn in
		[Yy]* ) echo "Creating..."; break;;
		[Nn]* ) exit;;
		* ) echo "Please select Yes or No";;
	    esac
   	done
    fi

    echo $folderName

    #Create Folders
    mkdir $folderName

    #i++
    i=`expr $i + 1`
done

