docker buildx build --platform linux/amd64 -f docker/Dockerfile -t 192.168.45.100:5000/dood-jenkins .

docker tag 192.168.45.100:5000/dood-jenkins:latest 192.168.45.100:5000/dood-jenkins:latest

docker push 192.168.45.100:5000/dood-jenkins:latest