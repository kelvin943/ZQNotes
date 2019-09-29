
## 关联本仓库和远程仓库 {#1}

git 仓库初始化

    //进入到要关联到远程仓库的目录
    ➜  cd 
    //初始化本地仓库会在当前文件夹内生成.git隐藏文件（git的配置文件）
    ➜  git init
    //git 仓库必须要有README.md 文件，如果在网站上面新建仓库勾选了创建readme 这里就不需要在本地做这个操作
    ➜  git add README.md
    //提交修改到本地仓库
    ➜  git commit -m "repo init"
    //将本地仓库和远程仓库关联
    ➜  git remote add origin RepositoryOriginUrl
    //查看本地仓库关联的远程仓库
    ➜  git remote   
    ➜  git remote -v
    //删除指定远端仓库
    ➜  git remote rm origin
    //拉取最新远端项目
    ➜  git pull origin master
    //如果远程仓库和本地仓库都有提交，本地和远程各有不同的histories。无法自动合并
    ➜  git pull origin master --allow-unrelated-histories
    //将本地仓库的所有内容推送到远程仓库
    ➜  git push -u origin master



2.配置git代理

    //配置全局 git 的配置文件（~/.gitconfig）
    ➜  vim  .gitconfig
    //好房代理
    [http]  proxy = http://10.59.72.13:3128
    [https] proxy = https://10.59.72.13:3128

