aaa
pipeline {
    agent any
    environment {
        REGISTRY = "liransehayk/my-nginx"
        SERVICE_NAME = "my-nginx_nginx"
    }
    stages {
        stage('Deploy to nginx service') {
            steps {
                echo 'Going to deploy $TAG_VERSION to $SERVICE_NAME from $REGISTRY'
                bat 'docker service update --image %REGISTRY%:%TAG_VERSION% %SERVICE_NAME%'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
