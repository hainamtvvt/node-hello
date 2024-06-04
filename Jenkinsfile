pipeline {
    agent {
        label ('node1')
    }

    environment {
        DOCKER_IMAGE = 'nodejs/app'
        DOCKER_REPO = 'hainamtvvt/node-hello'
        APP_VERSION = "${BUILD_ID}"
        APP_ENV = "${BRANCH_NAME}"

        DOCKER_USERNAME = credentials('DOCKER_USERNAME')
        DOCKER_PASSWORD = credentials('DOCKER_PASSWORD')
    }

    stages {
        stage ('[NODEJS] Build') {
            steps {
                echo '************ Build App *************'
                sh 'chmod 777 ./jenkins/build.sh'
                sh './jenkins/build.sh'
            }
        }
        stage ('[NODEJS] Push') {
            steps {
                echo '************ Push image to docker hub *************'
                sh './jenkins/push.sh'
            }
        }
    }
}