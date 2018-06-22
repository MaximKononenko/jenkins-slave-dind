pipeline {
    agent none
    stages {
        stage('Build Stage') {
            agent {
                label 'swarm-agent'
            }
            steps {
                echo "Run docker build Stage"
                docker build .
            }
        }
        stage('Sequential') {
            agent {
                label 'for-sequential'
            }
            environment {
                FOR_SEQUENTIAL = "some-value"
            }
            stages {
               stage('In Sequential 1') {
                   steps {
                       echo "In Sequential 1"
                   }
               }
               stage('In Sequential 2') {
                   steps {
                       echo "In Sequential 2"
                   }
               }
            }
        }
    }
}