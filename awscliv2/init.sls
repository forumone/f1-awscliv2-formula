uninstall_awscliv1:
  pkg.removed:
    - name: awscli
    
extract_awscliv2_zip:
  archive.extracted:
    - name: /tmp/awscliv2/
    - source: https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip
    - user: root
    - group: root
    - source_hash: md5=db22984399ea0778dea604b2cafcecf7

install_awscliv2:
  cmd.run:
    - name: /tmp/awscliv2/aws/install
    - requires:
      - uninstall_awscliv1
      - extract_awscliv2_zip

cleanup_install:
  file.absent:
    - name: /tmp/awscliv2/
    - requires:
      - install_awscliv2
