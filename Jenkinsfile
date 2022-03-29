properties([parameters([string(description: 'enter the path of the file', name: 'Filepath'), string(description: 'enter the replacing URL', name: 'OldURL'), string(description: 'enter the new URL', name: 'NewURL')])])
  
    pipeline {
            agent any 
		    stages {
		            stage('Git checkout') {
				            steps {
						          echo "checking out from Git Repo";
								 git branch: 'main', url: 'https://github.com/Supreeth-Athreyas/project.git'
							}
					}
					
                    stage('executing the powershell script') {
                            steps {
                                  echo "executed the script"
                                  powershell 'Scripts/URL_update.ps1'								  
							}
					}
			}
	}
