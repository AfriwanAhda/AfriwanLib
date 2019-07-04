# AfriwanLib
General library for iOS, iPadOS and macOS app. Create animation, round corner of view/button, check internet connection easily with AfriwanLib.

[<img src="https://github.com/AfriwanAhda/FileDemo/blob/master/loadimage.gif" width="281.1" height="500" alt="Load Image Link"/>](https://github.com/AfriwanAhda/AfriwanLib#load-image-----)
[<img src="https://github.com/AfriwanAhda/FileDemo/blob/master/animation.gif" width="281.1" height="500" alt="Animation Link"/>](https://github.com/AfriwanAhda/AfriwanLib#create-animation--round-corner-----)
[<img src="https://github.com/AfriwanAhda/FileDemo/blob/master/connection.gif" width="281.1" height="500" alt="Connection Link"/>](https://github.com/AfriwanAhda/AfriwanLib#check-internet-connection-----)


# How to use

First step, add AfriwanLib on your Podfile
```groovy
pod 'AfriwanLib'
```


Open your Terminal and run Pod Install. Don’t forget to import AfriwanLib in your Class:
```groovy
import AfriwanLib
```
## [<img src="https://github.com/AfriwanAhda/FileDemo/blob/master/animation.gif" width="28.1" height="50" alt="Animation Demo"/>](https://diponten.com/2019/07/02/create-animation/)    Create Animation & Round Corner
Now you can create round corner of your view or button easily with single lline of code:
```groovy
roundCorner(view: button_blue, cornerRadius: 15)
```


Or create custom round corner only with adding parameter you needed:
```groovy
// Custom round corner with full parameter
roundCorner(view: view_green, cornerRadius: 30, shadowOpacity: 0.4, shadowRadius: 2.5, shadowOffset: CGSize.init(width: 1, height: 1), masksToBounds: false)

// Custom round corner with some parameter, for this example I create circle view.
roundCorner(view: view_orange, cornerRadius: view_orange.frame.height/2, shadowOpacity: 0.35, shadowRadius: 3.2)
```


Create animation for UIView, UIButton, UITextField, etc as simple as this:
```groovy
pulsate(view: yourVieworButton)
```

Or create custom animation only with adding parameter you needed:
```groovy
// Custom animation with some parameter
shake(view: view_green, duration: 0.2, autoreverses: true, repeatCount: 3)

// Custom animation with full parameter
flash(view: view_orange, duration: 0.5, autoreverses: true, repeatCount: 5, fromValue: 1, toValue: 0.2, timingFunction: CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut))
```
## [<img src="https://github.com/AfriwanAhda/FileDemo/blob/master/loadimage.gif" width="28.1" height="50" alt="Load Image Demo"/>](https://diponten.com)    Load Image

Load image from url without background:
```groovy
image_view.loadImage(imageUrl: "url")
```

Load image with background image before image fully loaded (for example with AppIcon image background)
```groovy
image_view.loadImage(imageUrl: "url", backgroundImage: #imageLiteral(resourceName: "AppIcon"))
```
## [<img src="https://github.com/AfriwanAhda/FileDemo/blob/master/connection.gif" width="28.1" height="50" alt="Connection Demo"/>](https://diponten.com/2019/07/02/connection/)    Check Internet Connection

Very easy to check internet connection
```groovy
if isConnectedToInternet() {
resultText = "Connected"
} else {
resultText = "Not Connected"
}
```



# One Library for iOS, iPadOS, and macOS App

The good news, beside iOS app, you can use this library for your iPadOS and macOS app too with Xcode 11, but don't worry with lower Xcode you still can use this library for your iOS app.

Project example include in this Library, you can clone or download from this repository. Use Xcode 11 to open project and choose "AfriwanLibExamples" like picture below:

[<img src="https://github.com/AfriwanAhda/FileDemo/blob/master/xcode.png" alt="Project example"/>](https://developer.apple.com/xcode/whats-new/)


