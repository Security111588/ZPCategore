
    iOS项目的目录结构与开发常用工具类扩展分享 
-----------------------------------  
  根据每个公司开发规范或者个人开发者习惯不同，项目结构也不同。每个程序员在开发项目的时候都有整理自己常用的类扩展，我也整理了一些自己封装的一些工具类扩展，分享出来希望某些类可以给大家有一些帮助和提高开发效率。<br />  
    
#### 项目的目录结构上我说这么分的：   
    AppDelegate 
    Categories  
    Helper
    Macro
    Module
    Resources
    Vendors
  
#### AppDelegate：   
    应用的入口文件，单独放在一个文件夹
    
#### Categories  主要是放一些开发常用且已经封装好的分类
     |- CALayerAddition
     |- NSArrayAddition
     |- NSDateAddition
     |- NSDictionaryAddition
     |- NSStringPathAddition
     |- UIBarButtonItemAddition
     |- UILabelAddition
     |- UIViewAddition
     |- UIWindowAddition

#### Helper--工具类，助手类的文件扩展  
       |- Extension
       |- ToolClass
          |- AudioTool
          |- PopMenu
          |- Singleton

#### Macro  宏相关文件
     |- Common
           |- AppMacro.h                 — App相关的宏
           |- NotificationMacro.h        –通知相关的宏
           |- Prefix.pch                 –这个不用解释了吧
           |-UtilsMacro.h                –功能相关
           |-VendorMacro.h               –第三方常量
           |-ZPDef.h                     –自定义宏

#### Module  这里主要放MVC
     |- Model
     |- View
     |- Controller

#### Resources  资源文件夹，望名知义，对号入座
     |- Audio
     |- File
     |- Graphic
     |- NibSource

#### Vendors  这个目录主要放第三方类库/SDK等

#### 关于开发常用类扩展，请直接下载工程文件研究，已做详细的注释了，使用也很简单。

#### 链接  
1.如果在使用过程中遇到BUG，希望你能Issues我，谢谢<br />  
2.我的博客：http://www.iosplus.cn
