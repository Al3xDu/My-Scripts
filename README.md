# My-Scripts
### Scripts that I use in my daily work for automation/making things easier
## 1.Git Setup

Setup pushing without credentials through SSH: https://stackoverflow.com/questions/8588768/how-do-i-avoid-the-specification-of-the-username-and-password-at-every-git-push
1. https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent needed if you do not have key yet
2. https://www.openshift.com/blog/private-git-repositories-part-2a-repository-ssh-keys where to put key
3. run set_up_git.sh and should appear something like with first args as the username of account
for repository and the second as the repository name, in my case
$1 is Al3xDu
$2 is My-Scripts
```diff
        * remote origin
        Fetch URL: git+ssh://git@github.com/Al3xDu/My-Scripts.git
        Push  URL: git+ssh://git@github.com/Al3xDu/My-Scripts.git
        HEAD branch: main
        Remote branch:
            main tracked
        Local branch configured for 'git pull':
            main merges with remote main
        Local ref configured for 'git push':
            main pushes to main (up to date)
```