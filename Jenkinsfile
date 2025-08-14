pipeline {  

    agent any
        
    tools{
        maven "Maven-3.9.11"
    }
    stages {
        stage('Clone Repo') {
            steps {
             git branch: 'main', url: 'https://github.com/priti33z/java_pipeline.git'
            }
        }
        stage('Mavaen Build') {
            steps {
               sh 'mvn clean package'
            }
        }
    }
}
