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
        withSonarQubeEnv(installationName: 'SonarScan_Test') {
          sh './mvnw clean org.sonarsource.scanner.maven:sonar-maven-plugin:3.9.0.21155:sonar'
        }
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