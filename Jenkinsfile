pipeline {
    agent any
    triggers {
        pollSCM('*/1 * * * *')
    }
    stages {
        stage('build') {
            steps {
                script{
                    build()
                }
            }
        }
        stage('deply-dev') {
            steps {
                script{
                    deploy("DEV")
                }
            }
        }
        stage('test-dev') {
            steps {
                script{
                    test("DEV")
                }
            }
        }
        stage('deploy-stg') {
            steps {
                script{
                    deploy("STG")
                }
            }
        }
        stage('test-stg') {
            steps {
                script{
                    test("STG")
                }
            }
        }
        stage('deploy-prd') {
            steps {
                script{
                    deploy("PRD")
                }
            }
        }
        stage('test-prd') {
            steps {
                script{
                    test("PRD")
                }
            }
        }
    }
}

def build(){
    echo "Building sample-book-app..."
    sh "docker build -t artisktdl/sample-book-app ."

    echo "Pushing image to docker registry..."
    sh "docker push artisktdl/sample-book-app"
}

def deploy(String env){
    echo "Deploying to ${env} env..."

    sh "docker pull artisktdl/sample-book-app"
    sh "docker compose down sample-book-app${env.toLowerCase()}"
    sh "docker compose up -d sample-book-app-${env.toLowerCase()}"

    echo "Deployment to ${env} environment finished."
}

def test(String env){
    echo "Testing sample-book-app on ${env} env..."
}