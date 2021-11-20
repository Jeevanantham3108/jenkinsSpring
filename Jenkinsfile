pipeline {
	agent any
	stages {
    		stage('Compile and Clean') {
        			steps {
            				sh "mvn clean compile"
        			}
    		}
    		stage('deploy') {
        			steps {
            				sh "mvn package"
        			}
    		}
stage('Build Docker image'){
        			steps {
         	 			sh "docker build -t jeeva3108/jenkins-springboot:${BUILD_NUMBER} ."
        			}
    		}
stage('Docker Login'){
        			steps {
  
                			sh "docker login -u jeeva3108 -p ${Dockerpwd}"
            				}
        			           	 
    		}
stage('Docker Push'){
        			steps {
            			sh 'docker push jeeva3108/jenkins-springboot:${BUILD_NUMBER}'
        			}
    		}
stage('Docker deploy'){
        			steps {          	 
            	sh 'docker run -itd -p  8081:8080 jeeva3108/jenkins-springboot:${BUILD_NUMBER}'
        			}
    		}
	}
}
