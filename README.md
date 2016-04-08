# mydocker

#docker 容器一 oracle 11g 
 这个镜像构建 Oracle Database 11g Standard/Enterprise. 由于 oracle 授权的限制镜像不包含数据库，第一次运行需要先从外部目录安装 。

``该镜像只是用来做开发``

## 使用
下载 linux.x64_11gR2_database_1of2.zip  和 linux.x64_11gR2_database_2of2.zip 并解压到同一个目录**install_folder**中
运行容器是会自动安装和创建数据库

```sh
docker run --privileged --name oracle11g -p 1521:1521 -v <install_folder>:/install jaspeen/oracle-11g
```
然后提交这个安装和配置好的容器 :
```sh
docker commit oracle11g oracle11g-installed
```

数据库安装在 **/opt/oracle** 目录

操作系统用户:
* root/install
* oracle/install

数据库用户:
* SYS/oracle

你可以映射dpdump目录来简化上传dumps :
```sh
docker run --privileged --name oracle11g -p 1521:1521 -v <install_folder>:/install -v <local_dpdump>:/opt/oracle/dpdump jaspeen/oracle-11g
```
要执行 impdp/expdp 运行下面的docker exec命令:
```sh
docker exec -it oracle11g impdp ..
```

# 搜索查找rhel docker 镜像
https://access.redhat.com/search/#/container-images?q=rhel&p=1&sort=relevant&rows=12&srch=any&documentKind=ImageRepository
