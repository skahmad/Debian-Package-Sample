
app:
    g++ -c hellodeb.cpp -o hellodeb.o
    g++ -o hellodeb hellodeb.o

dir:
    mkdir -p debpackage/usr/local/bin
    cp hello debpackage/usr/local/bin
    mkdir debpackage/DEBIAN
    touch debpackage/DEBIAN/control
    touch debpackge/DEBIAN/postinst
    
   echo "##########################################" > debpackage/DEBIAN/postinst
    echo "# This file must be executable script" >> debpackage/DEBIAN/postinst
    echo "# it is ececute after successfully install our package." >> debpackage/DEBIAN/postinst
    echo "# below command will be execute afetr installation." >> debpackage/DEBIAN/postinst
    echo "#########################################" >> debpackage/DEBIAN/postinst
    echo "echo \"hellodeb application Install success.\"" >> debpackage/DEBIAN/postinst
    
    echo > debpackage/DEBIAN/control
    
build-package:
    dpkg-deb --build hellodeb
    
