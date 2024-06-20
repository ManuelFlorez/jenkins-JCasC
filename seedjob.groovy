job('seed_job') {
  scm {
    git {
      remote {
        url('https://github.com/ManuelFlorez/jenkins-JCasC.git')
      }
      branch('main')
    }
  }
  steps {
    dsl {
      external('hellow_world_job.groovy')
    }
  }
}