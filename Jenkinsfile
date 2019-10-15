node {
    checkout scm
    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
        def app = docker.build("inframind-app", "./app") 
        def db = docker.build("inframind-db", "./db") 
        app.push('latest')
        db.push('latest')
    }
}