default[:boilerplate_jenkins] = {
  executors: 4,
  host: 'jenkins.local',
  path: '/',
  port: 8080,
  ssl: false,
  mail: {
    smtp_host: nil,
    recipients: nil
  }
}
