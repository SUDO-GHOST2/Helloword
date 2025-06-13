pipeline {
    agent any

    parameters {
        string(name: 'VERSION', defaultValue: '', description: 'version to deploy on prod')
        choice(name: 'VERSION', choices: ['1.1.0', '1.2.0', '1.3.0'], description: '')
        booleanParam(name: 'executeTests', defaultValue: true, description: 'Run test stage or not')
    }

    environment {
        NEW_VERSION = '1.3.0'
    }

    stages {
        stage('build') {
            steps {
                echo 'Building Project'
            }
        }

        stage('test') {
            when {
                expression { params.executeTests }
            }
            steps {
                echo 'Testing Project'
            }
        }

        stage('deploy') {
            steps {
                echo "Deploying Project"
                echo "DEploying version ${params.VERSION}"
            }
        }
    }
}
