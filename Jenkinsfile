properties([parameters([string(description: 'Please enter the path of the file', name: 'Filepath'), string(description: 'Please enter the replacing URL', name: 'OldURL'), string(description: 'Please enter the NewURL', name: 'NewURL')])])
  
    pipeline {
            agent any 
		    stages {
		            stage('Git checkout') {
				            steps {
						          echo "checking out from Git Repo";
								  git branch: 'main', credentialsId: '7e1336ff-5e5f-4295-9113-8396afa69096', url: 'https://github.com/Supreeth-Athreyas/projects.git'
							}
					}
					
                    stage('executing the powershell script') {
                            steps {
                                  echo "executed the script"
                                  powershell 'update_URL.ps1'								  
							}
					}
			}
	}
