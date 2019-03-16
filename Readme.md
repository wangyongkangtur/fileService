step1:npm install

step2:docker build -t file:latest .

step3:docker run -d --name file -p 9999:80 -v /home/public:/app/public file:latest ，其中9999是外部访问端口号，/home/public是物理机挂载目录


