
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

## 131231313 {123}

1.javafdafsa

    - [x]   fad
    fa
   
这是文字……

- [x] 选项一
- [ ] 选项二  
- [ ]  [选项3]

代码1

***
---
* * *
|    fadffafsa    |       bfasffadfsaf       |      fafdsafafafafafsdfafafaf     |
|:-------:|:------------- | ----------:|
|   居中  |     左对齐    |   右对齐   |
|=========|===============|============|


[13131](#)


```flow                     // 流程
st=>start: 开始|past:> http://www.baidu.com // 开始
e=>end: 结束              // 结束
c1=>condition: 条件1:>http://www.baidu.com[_parent]   // 判断条件
c2=>condition: 条件2      // 判断条件
c3=>condition: 条件3      // 判断条件
io=>inputoutput: 输出     // 输出
//----------------以上为定义参数-------------------------

//----------------以下为连接参数-------------------------
// 开始->判断条件1为no->判断条件2为no->判断条件3为no->输出->结束
st->c1(yes,right)->c2(yes,right)->c3(yes,right)->io->e
c1(no)->e                   // 条件1不满足->结束
c2(no)->e                   // 条件2不满足->结束
c3(no)->e                   // 条件3不满足->结束
```

```flow                             // 流程
st=>start: 启动|past:>http://www.baidu.com[blank] // 开始
e=>end: 结束                      // 结束
op1=>operation: 方案一             // 运算1
sub2=>subroutine: 方案二|approved:>http://www.baidu.com[_parent]  // 运算2
sub3=>subroutine: 重新制定方案        // 运算2
cond1=>condition: 行不行？|request  // 判断条件1
cond2=>condition: 行不行？          // 判断条件2
io=>inputoutput: 结果满意           // 输出

// 开始->方案1->判断条件->
st->op1->cond1
// 判断条件1为no->方案2->判断条件2为no->重新制定方案->方案1
cond1(no,right)->sub2->cond2(no,right)->sub3(right)->op1
cond1(yes)->io->e       // 判断条件满足->输出->结束
cond2(yes)->io->e       // 判断条件满足->输出->结束
```

```sequence
A->>B: 你好
Note left of A: 我在左边     // 注释方向，只有左右，没有上下
Note right of B: 我在右边
B-->A: 很高兴认识你
```