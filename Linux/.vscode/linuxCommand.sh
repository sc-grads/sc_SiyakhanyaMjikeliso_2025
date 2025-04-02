#!/bin/bash
#Common Directories
/ #“Root,” the top of the file system hierarchy. 

/bin #-Binaries and other executable programs. 

/etc #-System configuration files.

 /home #Home directories. 

/opt #Optional or third party software.

 /tmp #Temporary space, typically cleared on reboot. 

/usr #User related programs. 

/var #Variable data, most notably log files.

# Linux Commands

pwd  #Displays the present working directory

cd [dir] #Changes the current directory to dir

ls #Lists directory contents.

ls -l #Lists directory contents using a long listing format.

cat #Concatenates and displays files.


man command  #Displays the online manual for command.

#Creating and Removing Directories

mkdir [-p] #directory - Create a directory. 

rmdir [-p] #directory - Remove a directory. 

rm -rf #directory - Recursively removes directory.

ls -F #to reveal file types.

#Listing Files by Time and in Reverse

ls -t #List files by time.
ls -r #Reverse order.
ls -latr #Long listing including all filesreverse sorted by time.
ls -R #Lists files recursively

#The tree Command

tree -d #List directories only.
tree -C #Colorize output.
ls --color #Colorize the output.

#The find Command
find [path…] [expression] #Recursively finds files in path that match the expression. If no arguments are supplied, it finds all files in the current directory.
-name #pattern Find files and directories that match pattern.
-iname #pattern Like -name, but ignores case.
-ls #Performs an ls on each of the found items.

#A Fast Find - locate
locate pattern

#Viewing and Editing Files
#Displaying the Contents of Files
cat #file Display the contents of file.
more #file Browse through a text file.
less #file Output the beginning (or top) portion of file.
tail #file Output the ending (or bottom) portion of file.

#The Vi Editor
vi [file] #Edit file.
vim [file] #Same as vi, but more features.
view [file] #Starts vim in read-only mode. 

#Emacs Commands

C-h #Help
C-x C-c #Exit
C-x C-s #Save the file
C-h t #Built-in tutorial
C-h k <key> #Describe key

#Deleting, Copying, Moving, and Renaming Files
mv #Move or rename files and directories.
mv #source destination
mv -i #source destination

sort #file Sort text in file.
sort -k F #Sort by key. F is the field number.
sort -r #Sort in reverse order.
sort -u #Sort unique.

#Removing Files

rm #file Remove file. 

rm -r #dir Remove the directory and its contents recursively. 

rm -f #file Force removal and never prompt for confirmation.

#Creating Aliases
alias [name[=value]] #List or create aliases. Use name=value to create a new alias.

#Removing Aliases
unalias name #Remove the “name” alias.
unalias -a #Remove all aliases

#The su Command
su [username] #Change user ID or become superuser
whoami #Displays the effective username.
sudo #Execute a command as another user, typically the superuser.