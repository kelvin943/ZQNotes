# SSH 命令相关

1.配置多个 ssh 秘钥

    #本地配置文件目录  ~/.ssh/config

    Host gitlab.com
    HostName git.ipo.com
    AddKeysToAgent YES
    UseKeychain YES
    User  zhangquan526@pingan.com.cn
    PreferredAuthentications publickey
    IdentityFile ~/.ssh/id_rsa_gitlab

    Host github.com
    Hostname github.com
    AddKeysToAgent YES
    UseKeychain YES
    User quan943@163.com
    PreferredAuthentications publickey
    IdentityFile ~/.ssh/id_rsa_github

    Host gitee.com
    Hostname gitee.com
    AddKeysToAgent YES
    UseKeychain YES
    User quan943@163.com
    PreferredAuthentications publickey
    IdentityFile ~/.ssh/id_rsa_gitee

2.生成RSA秘钥对命令

    //生成一对秘钥 (生成是的时候不需要密码)
    ➜  ~ ssh-keygen -t rsa -C "quan943@163.com" -f ~/.ssh/id_rsa_github
    //生成一对秘钥
    ➜  ~ ssh-keygen -t rsa -C "zhangquan526@pingan.com.cn" -f ~/.ssh/id_rsa_gitlab

    //保存到钥匙串
    ➜  ~ ssh-add -k ~/.ssh/id_rsa_gitlab
    ➜  ~ ssh-add -k ~/.ssh/id_rsa_github
    //查看
    ➜  ~ ssh-add -l

    //查看里连接是否成
    ➜  ~ ssh -T git@gitlab.com
    ➜  ~ ssh -T git@github.com

3ssh 远程登录 jenkins

    ssh -l 用户名 serviceIP
    ssh -l jenkins 10.59.72.120  -p jenkins

    //ssh scp 命令拷贝文件
    scp -r /Users/zhangquan526/.cocoapods/repos/ipo-paspecs/Thirdparty/0.1.18 jenkins@10.59.72.120:/Users/jenkins/.cocoapods/repos/pa/thirdparty
