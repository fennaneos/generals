You can access and write data in repositories on GitHub.com using SSH (Secure Shell Protocol). When you connect via SSH, you authenticate using a private key file on your local machine.

### https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
This creates a new SSH key, using the provided email as a label.
hp@hp-HP-EliteBook-830-G5:~$ ssh-keygen -t ed25519 -C "fennane.oussama.bias@gmail.com"
Generating public/private ed25519 key pair.
Enter file in which to save the key (/home/hp/.ssh/id_ed25519):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /home/hp/.ssh/id_ed25519.
Your public key has been saved in /home/hp/.ssh/id_ed25519.pub.
The key fingerprint is:
SHA256:eAB********************** fennane.oussama.bias@gmail.com
The key's randomart image is:
+--[ED25519 256]--+
|  .oB+ . oo      |
|   +.++ o.+      |
|... o.+o . +   E |
|+. o o o  . o  oo|
|..o   o S  . .oo.|
| ..  . o      o. |
| .  * o        ..|
| .oO.+         ..|
|..+++..         .|
+----[SHA256]-----+


### Copy the SSH public key to your clipboard.
hp@hp-HP-EliteBook-830-G5:~$ pbcopy < ~/.ssh/id_ed25519.pub
La commande « pbcopy » n'a pas été trouvée, voulez-vous dire :
  commande « bcopy » du deb bacula-sd (9.4.2-2ubuntu5)
Essayez : sudo apt install <nom du deb>

# https://coderwall.com/p/oaaqwq/pbcopy-on-ubuntu-linux
pbcopy is an awesome tool on Mac, but the actual program is not available on Ubuntu.
The functionality can be replicated in a few simple steps on Ubuntu, or any distro of linux with a few modifications.
sudo apt-get install -y xclip
Open .bashrc and add an alias
alias pbcopy="xclip -sel clip"
Close the editor and execute source ~/.bashrc
Now executing pbcopy < ~/.ssh/id_ed25519.pub for example will copy your public SSH key to the clipboard

### https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account
After you generate an SSH key pair, you must add the public key to GitHub.com to enable SSH access for your account.
go to https://github.com/settings/keys -> access -> ssh and gpg keys



### https://docs.github.com/en/get-started/getting-started-with-git/managing-remote-repositories#switching-remote-urls-from-https-to-ssh
List your existing remotes in order to get the name of the remote you want to change.
hp@hp-HP-EliteBook-830-G5:~/jenkins$ git remote -v
origin	https://github.com/fennaneos/jenkins.git (fetch)
origin	https://github.com/fennaneos/jenkins.git (push)
Change your remote's URL from SSH to HTTPS with the git remote set-url command.
hp@hp-HP-EliteBook-830-G5:~/jenkins$ git remote set-url origin git@github.com:fennaneos/jenkins.git
hp@hp-HP-EliteBook-830-G5:~/jenkins$ git remote -v
origin	git@github.com:fennaneos/jenkins.git (fetch)
origin	git@github.com:fennaneos/jenkins.git (push)




