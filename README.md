# AfriwanLib
Create animation, round corner of view or button, check internet connection and much more easily with AfriwanLib a library for your iOS app.

[<img src="https://github.com/AfriwanAhda/AfriwanLib/blob/master/demo/animation.gif" width="281.1" height="500" alt="Afriwan Ahda"/>](https://diponten.com)
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
[<img src="https://github.com/AfriwanAhda/AfriwanLib/blob/master/demo/connection.gif" width="281.1" height="500" alt="Afriwan Ahda"/>](https://apps.apple.com/id/developer/afriwan-ahda/id1330133888)


# How to use

First step, add AfriwanLib on your Podfile
```groovy
pod 'AfriwanLib'
```


Open your Terminal and run Pod Install. Don’t forget to import AfriwanLib in your Class:
```groovy
import AfriwanLib
```


## Create Animation & Round Corner
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

## Check Internet Connection

Very easy to check internet connection
```groovy
if isConnectedToInternet() {
resultText = "Connected"
} else {
resultText = "Not Connected"
}
```


Project example include in this Library, you can clone or download from this repository. Use Xcode 11 Beta to open project and choose "AfriwanLibExamples" like picture below:
[<img src="https://github.com/AfriwanAhda/AfriwanLib/blob/master/demo/xcode.png" alt="Xcode"/>](https://developer.apple.com/xcode/whats-new/)

The good news, beside iOS and iPadOS app, you can use this library to your macOS app too with Xcode 11 Beta, but don't worry with lower Xcode you still can use this library for your iOS app. Happy Coding!!


