# why
每次我新建一个iOS项目的时候，我得做如下事情：
1，配置 SwiftLint
1. 配置 RSwift
2. 配置 fastlane
3. 配置 Podfile
于是我在想能否做一个模版工程，每次修改下工程名就行了，于是诞生了这个项目

# how
实现方式很简单
1. 新建一个配置OK了的模版工程
2. 复制模版工程，修改文件夹名称以及修改xbproj、xcworkspacedata、Podfile、Fastfile等文件

# use
1. download 工程，执行 `sh template.sh`