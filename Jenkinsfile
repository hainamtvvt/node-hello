pipeline {
    agent {
        label ('node1')
    }

    enviroment {
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