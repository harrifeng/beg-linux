# compile to o file
```
[05:18:45] hfeng@ ch01 (master) $ gcc -c bill.c fred.c
[05:18:51] hfeng@ ch01 (master) $ ls
bill.c	bill.o	fred.c	fred.o	README.md
```
# compile the main to run
```
[05:24:47] hfeng@ ch01 (master) $ gcc -c main.c
[05:25:02] hfeng@ ch01 (master) $ gcc -c bill.c
[05:25:06] hfeng@ ch01 (master) $ ls
bill.c	bill.o	fred.c	fred.o	lib.h  main  main.c  main.o  README.md
[05:25:06] hfeng@ ch01 (master) $ gcc -o main main.o bill.o
[05:25:16] hfeng@ ch01 (master) $ ./main
bill: we passed Hello World
```

# build archive
```
[05:33:27] hfeng@ ch01 (master) $ ar crv libfoo.a bill.o fred.o
a - bill.o
a - fred.o
[05:33:34] hfeng@ ch01 (master) $ gcc -o main.out main.o libfoo.a
[05:33:40] hfeng@ ch01 (master) $ ./main.out
bill: we passed Hello World
```
# We can also use -l and -L to point the library (must be start with lib)
```
[05:33:42] hfeng@ ch01 (master) $ gcc -o main2.out main.o -L. -lfoo
[05:38:07] hfeng@ ch01 (master) $ ./main2.out
bill: we passed Hello World
```

# ldd is important to find shared library
```
$ ldd /bin/vim
	linux-vdso.so.1 =>  (0x00007ffd437be000)
	libm.so.6 => /lib64/libm.so.6 (0x00007f174f3c6000)
	libselinux.so.1 => /lib64/libselinux.so.1 (0x00007f174f19e000)
	libtinfo.so.5 => /lib64/libtinfo.so.5 (0x00007f174ef74000)
	libacl.so.1 => /lib64/libacl.so.1 (0x00007f174ed6b000)
	libgpm.so.2 => /lib64/libgpm.so.2 (0x00007f174eb63000)
	libdl.so.2 => /lib64/libdl.so.2 (0x00007f174e95f000)
	libperl.so => /usr/lib64/perl5/CORE/libperl.so (0x00007f174e5d1000)
	libpthread.so.0 => /lib64/libpthread.so.0 (0x00007f174e3b4000)
	libc.so.6 => /lib64/libc.so.6 (0x00007f174dff1000)
	/lib64/ld-linux-x86-64.so.2 (0x000055d844b45000)
	libpcre.so.1 => /lib64/libpcre.so.1 (0x00007f174dd8f000)
	libattr.so.1 => /lib64/libattr.so.1 (0x00007f174db89000)
	libncurses.so.5 => /lib64/libncurses.so.5 (0x00007f174d962000)
	libresolv.so.2 => /lib64/libresolv.so.2 (0x00007f174d748000)
	libnsl.so.1 => /lib64/libnsl.so.1 (0x00007f174d52e000)
	libcrypt.so.1 => /lib64/libcrypt.so.1 (0x00007f174d2f7000)
	libutil.so.1 => /lib64/libutil.so.1 (0x00007f174d0f4000)
	libfreebl3.so => /lib64/libfreebl3.so (0x00007f174cef0000)
```
