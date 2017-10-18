# Debian-Package-Sample
In this project I am discussig about how to create Linux Debian Package.
Creating Debian such as Helloworld.deb Package in this tutorial.
step 1: 
  At first I create 'hellodeb.cpp' file and write some c code.
  
step 2:
  Then create Executeable file using C or C++ compiler. I am using GNU C Compiler.
  after executing a file will create such as 'hellodeb' and this file will be execute.
  
  e.g
  $: g++ -c hellodeb.cpp -o hellodeb.o
  $: g++ -o hellodeb hellodeb.o
  
step 3:
  Create a parent directory with the name of your project or as you wish.
  in this tutorial I am creating a Directory with the name 'hellodeb'
  create a sub directory with the name 'DEBIAN'.

step 4:
  make a directory path where you want to put your files on linux file system.
  E.g: In my case I want to put 'hellodeb' file to /usr/local/bin directory.
  so I am creating above directory path in the parent directory.
  and put your file to the directory.
 
step 5:
  here two most important files one is 'control' and another is 'postinst' file must create in
  the 'DEBIAN' directory.
  
step 6:
  The 'postinst' file make sure it is executable.It will run when installation is complete.
  and the 'control' file must have these mandatory fields.such as 
  a. Source
  b. Package
  c. Architecture
  d. Description
  e. Maintainer
  f. Version
  
  Directory Structure
  -----------------------------
  parent directory    ------>     hellodeb
                                  |___DEBIAN
                                  |   |___postinst
                                  |   |___control
                                  |
                                  |___usr
                                      |___local
                                          |___bin
                                              |___hellodeb
                                              
                                              
                                              
step 7:
  finally we are creating hellodeb.deb file using command below.
  
  $: dpkg-deb  --build hellodeb
  
  after executing this command we will see a hellodeb.deb file.
  
  
  
  
  thank you!
