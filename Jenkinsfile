pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh'''
                    echo "BuildinG docker image..."
                    docker build -t products-backend:v1 .
                    docker tag products-backend:v1 gujjula1/jenkins-products-backend:v$BUILD_NUMBER
                '''
            }
        }
        stage('Push') {
            steps {
                sh'''
                    echo "Pushing docker image into Dockerhub..."
                    docker push gujjula1/jenkins-products-backend:v$BUILD_NUMBER 
                '''
            }
        }
        
}
}


