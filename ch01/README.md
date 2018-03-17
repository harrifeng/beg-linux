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
