#手动集成React-Native到已有的项目中

教程在[博客](http://blog.chenghu.me/react-nativeintegrating-with-existing-apps.html)


1.由于目前的项目是使用的git管理的，可以将React-Native的仓库作为一个submodule添加到项目的仓库下。

	git submodule add https://github.com/facebook/react-native.git

![](http://yimagecache.qiniudn.com/rn_install_gitsubmodule.png)


2.进入`react-native`目录下，切换到最新发布的版本

	cd react-native
	git checkout -b 017ReleaseVersion v0.17.0
	
![](http://yimagecache.qiniudn.com/rn_install_017version.png)
	

3.安装组件

	npm install
	
4.在工程目录下创建js的文件夹，并创建`index.ios.js`。
	
	cd ..
	mkdir ReactComponent
	touch ReactComponent/index.ios.js
	
5.打开工程，添加React-Native相关工程。
	
	添加`react-native/React/React.xcodeproj`到项目中
	添加`react-native/Libraries／ActionSheetIOS/RCTActionSheet.xcodeproj`到项目中
	添加`react-native/Libraries／LinkingIOS/RCTLinking.xcodeproj`到项目中
	添加`react-native/Libraries／Image/RCTImage.xcodeproj`到项目中
	添加`react-native/Libraries／Network/RCTNetwork.xcodeproj`到项目中
	添加`react-native/Libraries／Text/RCTText.xcodeproj`到项目中
	添加`react-native/Libraries／WebSocket/RCTWebSocket.xcodeproj`到项目中

![](http://yimagecache.qiniudn.com/rn_install_addproject.png)

6.在工程的设置页面添加需要连接到Frameworks

![](http://yimagecache.qiniudn.com/rn_install_addframeworks.png)

7.添加搜索头文件的地址。在工程的`Build Settings`找到`Header Search Paths`，添加一条`$(SRCROOT)/react-native/React`，选择`recursive`

![](http://yimagecache.qiniudn.com/rn_install_addsearchpath.png)


这样就将React-Native集成到了现有的iOS工程中了。




