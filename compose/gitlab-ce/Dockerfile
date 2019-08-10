web:
  image: 'gitlab/gitlab-ce:latest'
  restart: always
  hostname: 'gitlab.frankfu.com.au'
  environment:
    GITLAB_OMNIBUS_CONFIG: |
      external_url 'https://gitlab.frankfu.com.au'
      gitlab_rails['gitlab_shell_ssh_port'] = 2224
      # Add any other gitlab.rb configuration here, each on its own line
  ports:
    - '80:80'
    - '443:443'
    - '2224:22'
  volumes:
    - '/srv/gitlab/config:/etc/gitlab'
    - '/srv/gitlab/logs:/var/log/gitlab'
    - '/srv/gitlab/data:/var/opt/gitlab'