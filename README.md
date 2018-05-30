# CALayer-CornerAndShadow


#### 圆角和阴影并存

- 实现的思路
  - 构建两个视图UIView，一个阴影UIView，一个圆角UIView，将圆角UIView添加到阴影UIView上（可以将UIView替换成Layer来实现，采用同样的思路，）
  
	- 采用layer实现
         - 如下是自己采用layer实现的扩展，以供参考
	  -  code url ：https://github.com/ZanderDev/CALayer-CornerAndShadow
		
	- 采用UIView实现：
	  - 简单版：https://blog.csdn.net/Crazy_SunShine/article/details/78029229
	  - 高级版：https://www.jianshu.com/p/0754833349a1

- 参考：
  - 优质：http://travisjeffery.com/b/2012/08/ios-how-to-mask-and-shadow-an-image/
  - 初级：https://blog.csdn.net/crazy_sunshine/article/details/78029229

#### imageview 遮罩mask
  - 参考：
    - 优质：https://www.jianshu.com/p/29a2e48677eb



博客原文链接：https://www.jianshu.com/p/dd06f2709655
