node {
	def app
	stage('Clone repository') {
		git branch: 'develop', url: 'https://github.com/GiYeons/IntroduceGame-fork.git'
	}
	stage('Build image') {
		app = docker.build("giyeonss/introduce-game")
	}
	stage('Test image') {
		app.inside {
			sh 'npm test'
		}
	}	
	stage('Push image') {
		docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
			app.push("${env.BUILD_NUMBER}")
			app.push("latest")
		}
	}
}
