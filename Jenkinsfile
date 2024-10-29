pipeline {
    agent any
    tools { nodejs 'node20' }
    stages {
        stage('Clone Repository') {
            steps {
                // Correct the URL to just use the repository URL
                git credentialsId: 'git-credentials', url: 'https://github.com/sanjay61989/mfe-shell.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                // Use Node.js 20 installation
                script {
                    def nodeHome = tool name: 'node20', type: 'NodeJSInstallation'
                    env.PATH = "${nodeHome}/bin:${env.PATH}"
                }
                sh 'npm install'
            }
        }
        stage('Build Application') {
            steps {
                // Build the Angular application
                sh 'ng build --prod'
            }
        }
        stage('Deploy') {
            steps {
                // Add your deployment commands here
                sh 'echo "Deploying to server..."' // Placeholder command
            }
        }
    }
}
