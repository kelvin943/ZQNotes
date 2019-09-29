1.node 启动和退出

    //执行一段 node 代码
    ➜  node service.js

    //退出
    ➜  control + c 

    //终端退出当前执行node 的环境 
    ➜  .exit

    //或者
    ➜  process.exit()
    //或者退出node 进程
    ➜  killall -9 node 
    //或者查看该段都对应的PID
    ➜  lsof -i tcp:8888
    ➜  kill -9  PID

