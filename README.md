# why
每次我新建一个iOS项目的时候，我得做如下事情：
1. 配置 SwiftLint
2. 配置 RSwift
3. 配置 Fastlane
4. 配置 Podfile
   
于是我想做一个模版工程，每次修改下工程名就行了，于是诞生了这个项目

# how
实现方式很简单
1. 新建一个配置完备了的模版工程
2. 复制模版工程，修改文件夹名称以及修改xbproj、xcworkspacedata、Podfile、Fastfile等文件

# use
1. download 工程，执行 `sh template.sh`，输入工程名以及工程路径就行了
2. 修改 Fastfile 里的配置
3. 修改 config 里的 bugly 配置


ps:迫于有时候 `pod install` 特别慢，我把 Pods 文件也放到模版工程里了.