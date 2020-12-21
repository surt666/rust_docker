aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 132280103954.dkr.ecr.eu-central-1.amazonaws.com/rust_docker
docker build -t132280103954.dkr.ecr.eu-central-1.amazonaws.com/rust_docker .
docker push 132280103954.dkr.ecr.eu-central-1.amazonaws.com/rust_docker 
