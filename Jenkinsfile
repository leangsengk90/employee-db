pipeline {
  agent { label "built-in" }

  stages {
    stage("Build"){
      steps {
        sh "docker build -t employee-db -f Dockerfile ."
      }
    }
    stage("Deploy"){
      steps {
        sh """ 
            docker rm -f employee-db || true
            docker run -d \
              -p 27017:27017 \
              --name employee-db \
              -e MONGO_INITDB_ROOT_USERNAME=mongoadmin \
              -e MONGO_INITDB_ROOT_PASSWORD=securepassword123 \
              -v /data/db:/data/db \
              employee-db
        """
      }
    }
  }
}
