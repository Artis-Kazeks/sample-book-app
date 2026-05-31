pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo "Bulding sample-book-app..."
            }
        }
        stage('deply-dev') {
            steps {
                echo "Deploying to dev env..."
            }
        }
        stage('test-dev') {
            steps {
                echo "Testing sample-book-app on dev env..."
            }
        }
        stage('deploy-stg') {
            steps {
                echo "Deploying to stg env..."
            }
        }
        stage('test-stg') {
            steps {
                echo "Testing sample-book-app on stg env..."
            }
        }
        stage('deploy-prd') {
            steps {
                echo "Deploying to dev env..."
            }
        }
        stage('test-prd') {
            steps {
                echo "Testing sample-book-app on stg env..."
            }
        }
    }
}