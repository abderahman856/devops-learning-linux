ubuntu:~$ ls
filesystem
ubuntu:~$ echo 'echo "Hello DevOps"' > hello.sh
ubuntu:~$ ./hello.sh
bash: ./hello.sh: Permission denied
ubuntu:~$ ls -l
total 4
lrwxrwxrwx 1 root root  1 Dec 18 17:16 filesystem -> /
-rw-r--r-- 1 root root 20 Jan 19 19:31 hello.sh
ubuntu:~$ chmod +x ./hello.sh 
ubuntu:~$ ./hello.sh
Hello DevOps
ubuntu:~$ ls -l
total 4
lrwxrwxrwx 1 root root  1 Dec 18 17:16 filesystem -> /
-rwxr-xr-x 1 root root 20 Jan 19 19:31 hello.sh
ubuntu:~$ 
