 #!/bin/bash

mkdir -p bash_demo
echo "Direcotory "bash_demo" created"

cd bash_demo

echo "this file was created by a bash script on $(date +%Y-%m-%d)" > demo.txt
echo " file "demo.txt" created and have it's content"

echo "file content: $(cat demo.txt)"


