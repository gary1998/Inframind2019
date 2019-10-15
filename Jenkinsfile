node {
    checkout scm
    stage('Initialize'){
        def dockerInstall = tool 'docker-install'
        env.PATH = "${dockerInstall}/bin:${env.PATH}"
    }
    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
        def app = docker.build("inframind-app", "./app") 
        def db = docker.build("inframind-db", "./db") 
        app.push('latest')
        db.push('latest')
    }
}