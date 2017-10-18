
app:
    g++ -c hellodeb.cpp -o hellodeb.o
    g++ -o hellodeb hellodeb.o

dir:
    mkdir -p debpackage/usr/local/bin
    cp hello debpackage/usr/local/bin
    mkdir debpackage/DEBIAN
    touch debpackage/DEBIAN/control
    touch debpackge/DEBIAN/postinst
    
build-package:
    echo "##########################################" > debpackage/DEBIAN/postinst
    echo "# This file must be executable script" >> debpackage/DEBIAN/postinst
    echo "# it is ececute after successfully install our package." >> debpackage/DEBIAN/postinst
    echo "# below command will be execute afetr installation." >> debpackage/DEBIAN/postinst
    echo "#########################################" >> debpackage/DEBIAN/postinst
    echo "echo \"hellodeb application Install success.\"" >> debpackage/DEBIAN/postinst
    echo "Pakage: hellodeb" > debpackage/DEBIAN/control
	echo "Version: 1.0" >> debpackage/DEBIAN/control
	echo "Architecture: any" >> debpackage/DEBIAN/control
	echo "Source: hellodeb" >> debpackage/DEBIAN/control
	echo "Maintainer: sk ahmad" >> debpackage/DEBIAN/control
	echo "Description: It is a simple linux debian package program tutorials." >> debpackage/DEBIAN/control
    dpkg-deb --build debpackage
    
