pipeline {
    agent any
    tools {
        nodejs 'node20'
    }
    stages {
        stage('Node Config') {
            script {
                    try {
                        sh 'npm config ls'
                    } catch (Exception e) {
                        error "npm install failed: ${e.message}"
                    }
                }
        }
        stage('Clone Repository') {
            steps {
                // Correct the URL to just use the repository URL
                git credentialsId: 'git-credentials', url: 'https://github.com/sanjay61989/mfe-shell.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'ls -l'
                sh 'npm install'
            }
        }
        stage('Build Application') {
            steps {
                // Build the Angular
                sh 'npm run build'
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
