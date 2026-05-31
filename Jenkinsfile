pipeline {
    agent any
    parameters {
        string(name: 'NAME', defaultValue: 'World', description: "Who should I say hello to?")
    }
    stages {
        stage('Hello') {
            steps {
                echo "Hello ${params.NAME}!"
            }
        }
    }
}