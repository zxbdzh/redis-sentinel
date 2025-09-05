# redis-sentinel
## 即开即用的 docker 哨兵模式的集群

运行在 `docker` 目录下，文件夹如下

![](https://cn-sy1.rains3.com/picgo/2024/06/image-20240613145228630.png)



### 修改配置文件

在`docker`下执行脚本

```bash
chmod +x ./changeIp.sh
# 输入你的ip
./changeIp.sh
```



### 启动

在`docker`下执行命令：

```bash
docker network create redis-network
docker-compose up -d
```



效果

![](https://cn-sy1.rains3.com/picgo/2024/06/recording%2012.gif)



### 添加密码

自行修改配置文件， 然后执行 `dockr-compose restart`
