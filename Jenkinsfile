pipeline {
    agent { label 'Linux' }
    // The following line prevents Jenkins from cloning the whole repo. Skip if it you need the repo
    stages {
        stage ("Install requirements") {
            steps {
                sh 'pip install -r requirements1.txt'
            }
        }
    }
}
