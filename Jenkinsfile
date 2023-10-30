pipeline {
  agent any
  stages {
    stage('Python version') {
      steps {
        sh 'python3 --version'
      }
    }
    stage('Build') {
      steps {
        // sh 'python3 CAT_WeeB/_Test1.py'
        sh 'python -m py_compile CAT_WeeB/_Test1.py /home/sds/YBL_WS/build_Test1.exe'
      }
    }
  }
}