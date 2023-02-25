#!groovy

pipeline {
	agent none
  stages {
  	stage('Maven Install') {
    	agent {
      	docker {
        	image 'maven:3.9.0'
        }
      }
      steps {
      	sh 'mvn clean install'
      }
    }
    stage('Docker Build') {
    	agent any
      steps {
      dir('.'){
                    script{
                        dockerImage = docker.build("ABCtech")
                    
      }
    }
  }
}
