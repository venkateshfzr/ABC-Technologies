pipeline {
    agent { label 'slave1' }

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "M3"
    }
    
    stages {
        stage('SCM Checkout') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/venkateshfzr/ABC-Technologies'
            }
		}
        stage('Maven Build') {
            steps {
                // Run Maven on a Unix agent.
                sh "mvn -Dmaven.test.failure.ignore=true clean package"
            }
		}
        stage('Deploy to QA AppServer') {
            steps {
				script {
                    sshPublisher(publishers: [sshPublisherDesc(configName: 'QAServer', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '.', remoteDirectorySDF: false, removePrefix: 'target/', sourceFiles: 'target/mvn-hello-world.war')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
				}
            }
		}
	}
}

