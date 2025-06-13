pipeline {
    agent any

    tools {
        maven 'Maven 3.9'
    }

    stages {
        stage('Build') {
            steps {
                // For Windows users
                bat 'mvn --version'

                // For Linux/macOS, use:
                // sh 'mvn --version'
            }
        }
    }
}
