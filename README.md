# 簡介

這個 project 是用來演示一個 app 如何內嵌 webview 並透過 leancloud sdk 獲取開關以判斷是否要不要切換到 webview .  

同時也一併整合極光推送. 


# ADWebView

這是公司自製的 webview , 內含一個 toolbar 以及 UIWebView 版本和 WKWebView 版本.  由於 UIWebView 在 iOS 12 已被標記為棄用,  隨時都有可能就不能用了.  所以儘量以 WKWebView 為主. 


目前的實現中使用 storyboard ,  並不表示必須要用storyboard , 視專案需求可以自行調整. 

# 各部分實現

具體可以 commit log , 這份代碼是從零開始迭加各項功能的,  在每個 commit 中可以看到具體修改了哪邊,  如何改的
