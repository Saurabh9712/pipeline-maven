pipeline {
    agent any
   
    environment {
        PASS = credentials("registry-pass")
    }

    stages {
        stage('Build') {
            steps {
                sh '''
                ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
                ./jenkins/build/build.sh
                '''
            }
        }

        stage('Test') {
            steps {
                sh "./jenkins/test/mvn.sh mvn test"
            }
        }

        stage('Push') {
            steps {
                sh "./jenkins/push/push.sh"
            }
        }

        stage('Deploy') {
            steps {
                sh "./jenkins/deploy/deploy.sh"
            }
        }
    }

    post {
        always {
            echo 'This will always run after all stages.'
            // You can add actions like archiving artifacts, clean-up, etc. here
        }
        success {
            archiveArtifacts artifacts: 'java-app/target/*.jar', fingerprint: true
        }
        failure {
            echo 'This will run only if the pipeline fails.'
        }
        unstable {
            echo 'This will run if the pipeline is unstable.'
        }
    }
}

