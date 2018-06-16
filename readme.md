# 链家搜索微信小程序服务端

名声那么响其实只是把爬到的链家数据通过restful接口呈现出来。后来可能会做数据的可视化分析，但也可能不会了，毕竟只是想混个夏季实践hhh，因为我对微信小程序的前程是没有信心的，不打算长期做下去。

当然了，还有一个目的是通过这个简单的项目给新欢golang练练手。

## 如何跑起来

1. `go get github.com/Actooors/lianjia-search_mpservice`
2. 将`conf/app_reference.json`复制到`conf/app.json`，修改`app.json`中数据源配置
3. `go build && ./lianjia-search_mpservice`

