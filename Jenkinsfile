pipeline {
  agent any
  stages {
    stage('Python version') {
      steps {
        sh 'python3 --version'
      }
    }
    stage('SonarQube Analysis'){
     withSonarQubeEnv()
     {
        println ${env.SONAR_HOST_URL} 
        //  sh "python3 CAT_WeeB/_Test1.py sonar:sonar"
     }
    }

    stage('Build') {
      steps {
        sh 'python3 CAT_WeeB/_Test1.py'
        // sh 'python -m py_compile CAT_WeeB/_Test1.py -x /home/sds/YBL_WS/build_Test1.pyc'
      }
    }
  }
}