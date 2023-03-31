sed -ri 's/^#?(PasswordAuthentication)\s+(yes|no|prohibit-password)/\1 yes/' /etc/ssh/sshd_config
sed -ri 's/^#?(PermitRootLogin)\s+(yes|no|prohibit-password)/\1 yes/' /etc/ssh/sshd_config
sed -ri 's/^#?(UsePAM)\s+(yes|no)/\1 yes/' /etc/ssh/sshd_config
sed -ri 's/.*ssh-rsa/ssh-rsa/' /root/.ssh/authorized_keys
service sshd restart
