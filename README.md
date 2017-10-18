# Debian-Package-Sample
In this project I am discussig about how to create Linux Debian Package.
Creating Debian such as Helloworld.deb Package in this tutorial.
step 1: 
  At first I create 'hellodeb.c' file and write some c code.
  
step 2:
  Then create Executeable file using C or C++ compiler. I am using GNU C Compiler.
  after executing a file will create such as 'hellodeb' and this file will be executing.

step 3:
  Create a parent directory with the name of your project or as you wish.
  in this tutorial I am creating a Directory with the name 'hellodeb'
  create a sub directory with the name 'DEBIAN'.

step 4:
  make a directory path where you want to put your files on linux file system.
  E.g: In my case I want to put 'hellodeb' file to /usr/local/bin directory.
  so I am creating above directory path in the parent directory.
  and put your file to the directory.
  
  Directory Structure
  -----------------------------
  parent directory    ------>     hellodeb
                                  |___DEBIAN
                                  |___usr
                                  |   |___usr
                                  |       |___local
                                  |           |___bin
                                  |               |___hellodeb
                                  |
