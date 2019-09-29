### 创建私有POD命令笔记

添加远程spec库到本地    

    //相当于把远端的spec仓库克隆到本地的~/.cocoapods目录中
    pod repo add YourPodSpecRepositoryName YourPodSpecRepositoryURL

    //查看本地pod spec仓库 （本地目录地址 ~/.cocoapods）
    pod repo

    查看结果：
    master
    - Type: git (master)
    - URL:  https://github.com/CocoaPods/Specs.git
    - Path: /Users/Macbook/.cocoapods/repos/master
    YourPodSpecRepositoryName
    - Type: git (master)
    - URL:  YourPodSpecRepositoryURL
    - Path: /Users/Macbook/.cocoapods/repos/YourPodSpecRepositoryName



下载Cocoapods模板

    pod lib create YourPod


检查spec文件是否合法

    //检查podspec语法
    pod lib lint
    //允许警告
    pod lib lint --allow-warnings
    //不清除打印信息
    pod lib lint --allow-warnings --no-clean
    //查看详细信息
    pod lib lint --allow-warnings --no-clean --verbose
    pod lib lint --use-libraries
    //远程检查
    pod spec lint
    pod spec lint --allow-warnings
    pod spec lint --allow-warnings  --verbose --use-libraries



提交 podspec 文件

    //将本地编辑好的spec 提交到远端spec仓库
    pod repo push YourPodSpecRepositoryName YourPod.podspec --allow-warnings --use-libraries

    --allow-warnings  
    #允许编译警告
    --use-libraries
    #使用静态库的方式编译，默认使用framework 方式编译


更新本地仓库

    //更新指定本地私有库
    pod repo update YourPodSpecRepositoryName --verbose

    //更新所有本地spec仓库
    $pod repo update --verbose  或者
    $pod setup

    //删除search_index 执行pod search
    ~/Library/Caches/CocoaPods/search_index.json



pod  安装及更新命令

    // Mac OS X 10.11前 
    -> ~ sudo gem install cocoapods　-v 1.7.4

    //Mac OS X 10.11后   
    -> ~ sudo gem install -n /usr/local/bin cocoapods        
    -> ~ sudo gem install -n /usr/local/bin cocoapods --pre    //最新版本



pod 缓存清理

    ➜ pod cache clean --all
    ➜ rm -rf ~/Library/Caches/CocoaPods


