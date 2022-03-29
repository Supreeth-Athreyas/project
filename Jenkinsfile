properties([parameters([string(defaultValue: 'G:\\sample\\project_link.txt', name: 'Filepath'), string(defaultValue: 'http://supreeth.access.com/certified', name: 'OldURL'), string(defaultValue: 'https://subba.access.in/cerified', name: 'NewURL')])])
  
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
