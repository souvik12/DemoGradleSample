node {
 stage('SCM Checkout'){
       
      git credentialsId: 'my-app', url: 'https://github.com/souvik12/DemoGradleSample'
   
   }
   stage('Gradle Package'){
	   // Build using maven
	  def mvnHome = tool name: 'Gradle', type: 'gradle'
	   def mvnDec ="${mvnHome}"
	  sh label: '', script: "${mvnDec} build buidDocker"
   }
   //stage('Docker RUN'){
	   // Build using maven
	 // sh label: '', script: 'docker run -p 8080:8080 -t com.example/sample:0.0.1'
 //  }
}
