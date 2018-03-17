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
