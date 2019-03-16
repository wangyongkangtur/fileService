step1:npm install

step2:docker build -t file:latest .

step3:docker run -d --name file -p 9999:80 -v /home/public:/app/public file:latest


