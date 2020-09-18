uninstall-old-ius:
  pkg.purged:
    - name: ius-release
    - version: 1.0-14.ius.centos6
    
install-ius-repo:
  pkg.installed:
    - sources:
      - ius-release: https://repo.ius.io/ius-release-el6.rpm

install-ius-repo-update:
  cmd.run:
    - name: 'yum update -y'