pipeline {
    agent any
    parameters {
        string(name: 'GIT_REPO_URL', description: 'Git repository URL') // No default value
    }
    tools {
        nodejs 'nodejs20'
    }
    stages {
        stage('Node Config') {
            steps {
                sh 'npm config ls'
            }
        }
        stage('Clone Repository') {
            steps {
                // Correct the URL to just use the repository URL
                script {
                    // Check if the GIT_REPO_URL is provided
                    if (!params.GIT_REPO_URL) {
                        error('GIT_REPO_URL parameter is missing.')
                    }
                }
                git credentialsId: 'git-credentials', url: "${params.GIT_REPO_URL}"
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
        stage('Cleanup Workspace') {
            steps {
                cleanWs() // This clears the workspace before the build starts
            }
        }
    }
}
