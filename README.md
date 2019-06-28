# AfriwanLib
Create animation, round corner of view or button, and much more easily with AfriwanLib a library for your iOS app.

[<img src="https://github.com/AfriwanAhda/AfriwanLib/blob/master/images/demo.gif" width="231" height="500" alt="Afriwan Ahda"/>](https://diponten.com)

# How to use
First step add AfriwanLib on your Podfile
```swift
pod 'AfriwanLib'
```
Now you can create round corner of your view or button easily with 1 line of code:
```Swift
// Simple round corner
roundCorner(view: button_blue, cornerRadius: 15)

// Custom round corner with full parameter
roundCorner(view: view_green, cornerRadius: 30, shadowOpacity: 0.4, shadowRadius: 2.5, shadowOffset: CGSize.init(width: 1, height: 1), masksToBounds: false)

// Custom round corner with some parameter, for this example I create circle view.
roundCorner(view: view_orange, cornerRadius: view_orange.frame.height/2, shadowOpacity: 0.35, shadowRadius: 3.2)
```

You can create animation for UIView & UIButton as simple as this:
```groovy
// Simple animation
pulsate(view: yourVieworButton)

// Custom animation with some parameter
shake(view: view_green, duration: 0.2, autoreverses: true, repeatCount: 3)

// Custom animation with full parameter
flash(view: view_orange, duration: 0.5, autoreverses: true, repeatCount: 5, fromValue: 1, toValue: 0.2, timingFunction: CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut))
```
Example of project include in this Library, you can clone or download from this repository.



