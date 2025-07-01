pipeline {
    agent any  // Use any available agent or executor

    stages {

        stage('Clone Repository') {
            steps {
                // Jenkins automatically clones from the GitHub repo you specify in the job config
                echo 'Repository cloned automatically by Jenkins'
            }
        }

        stage('Compile Java') {
            steps {
                echo 'Compiling simplejava.java'
                // Compile the Java file
                bat 'javac HelloWorld.java'
            }
        }

        stage('Run Java Program') {
            steps {
                echo 'Running Java program'
                // Run the compiled Java class
                bat 'java HelloWorld'
            }
        }
    }

    post {
        success {
            echo 'Build and Run completed successfully 🎉'
        }
        failure {
            echo 'Something went wrong ❌'
        }
    }
}
