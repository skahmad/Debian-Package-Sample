
app:
    g++ -c hellodeb.cpp -o hellodeb.o
    g++ -o hellodeb hellodeb.o

dir:
    mkdir -p hellodeb/usr/local/bin
    cp hello hellodeb/usr/local/bin
    mkdir hellodeb/DEBIAN
    touch hellodeb/DEBIAN/control
    touch hellodeb/DEBIAN/postinst
    
build-package:
    dpkg-deb --build hellodeb
    
