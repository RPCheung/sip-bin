# sip 的使用
1. 用户首先下载 sip-bin 项目到本地
2. 在eclipse上新建java 项目，然后把 (sip-bin)lib 文件夹下的所有 jar 包 build path 到新建的java项目中
3. 然后定义 服务通讯报文的 POJO (注意 需加上 @ServsrReqMessage 、@ServsrResMessage)
4. 然后实现 BusinessProcessor 接口
5. 在 setUserComponent 方法中拿到 完成交易 所需的 对象 （包括 请求响应报文对象 MessageObject 、SqlSessionFactory等）
6. 在 executeWorkFlow 方法中 编写主要的 逻辑与对MessageObject对象的 取值或赋值等操作
7. 把编写好的 代码 打包成 jar 的形式，放入到 ./sip-bin/work/user/ 文件夹中
8. 进入到 bin 目录 执行 ./startup.sh
9. 无异常抛出即为启动成功
10. 如需关闭服务 请进入到 bin 目录 执行 ./stop.sh (以确保 完全关闭服务)
