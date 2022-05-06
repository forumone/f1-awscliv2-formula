aws_absent:
  file.absent:
    - name: /usr/local/bin/aws

aws_completer_absent:
  file.absent:
    - name: /usr/local/bin/aws_completer

aws_cli_dir_absent:
  file.absent:
    - name: /usr/local/aws-cli/

pkg.installed:
  - name: awscli
  - requires:
    - aws_absent
    - aws_completer_absent
    - aws_cli_dir_absent
