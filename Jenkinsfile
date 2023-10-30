pipeline {
  agent any
  stages {
    stage('Python version') {
      steps {
        sh 'python3 --version'
      }
    }
    stage('Sonar') {
      steps {
        script {
          withSonarQubeEnv('SonarScan_Test') {
            // sh "${scannerHome}/bin/sonar-scanner"
            sh "${sonarqubeScannerHome}/bin/sonar-scanner -X -Dsonar.host.url=http://sonarqube:9000 -Dsonar.login=${sonarLogin} -Dsonar.projectName=${env.JOB_NAME} -Dsonar.projectVersion=${env.BUILD_NUMBER} -Dsonar.projectKey=${env.JOB_BASE_NAME} -Dsonar.sources=src/main/java -Dsonar.java.libraries=target/* -Dsonar.java.binaries=target/classes -Dsonar.language=java"
          }
        }
      }
    }
    // stage('Build') {
    //   steps {
    //     sh 'python3 CAT_WeeB/_Test1.py'
    //     // sh 'python -m py_compile CAT_WeeB/_Test1.py -x /home/sds/YBL_WS/build_Test1.pyc'
    //   }
    // }
  }
}