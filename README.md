# One Library for All
General library for iOS, iPadOS and macOS app. Load an image, create animation, round corner of view/button, check internet connection, crypto, toast, alert and much more easily with AfriwanLib. You can click the image below for easy step to use this library.

[<img src="https://github.com/AfriwanAhda/FileDemo/blob/master/loadimage.gif" width="281.1" height="500" alt="Load Image Link"/>](https://github.com/AfriwanAhda/AfriwanLib#--------load-image)
[<img src="https://github.com/AfriwanAhda/FileDemo/blob/master/animation.gif" width="281.1" height="500" alt="Animation Link"/>](https://github.com/AfriwanAhda/AfriwanLib#--------create-animation--round-corner)
[<img src="https://github.com/AfriwanAhda/FileDemo/blob/master/connection.gif" width="281.1" height="500" alt="Connection Link"/>](https://github.com/AfriwanAhda/AfriwanLib#--------check-internet-connection)
<br></br>
[<img src="https://github.com/AfriwanAhda/FileDemo/blob/master/toast.gif" width="281.1" height="500" alt="Toast Link"/>](https://github.com/AfriwanAhda/AfriwanLib#--------dynamic-toast)
[<img src="https://github.com/AfriwanAhda/FileDemo/blob/master/crypto.gif" width="281.1" height="500" alt="Crypto Link"/>](https://github.com/AfriwanAhda/AfriwanLib#--------cryptographic-hash-function-sha)
[<img src="https://github.com/AfriwanAhda/FileDemo/blob/master/alert.gif" width="281.1" height="500" alt="Alert Link"/>](https://github.com/AfriwanAhda/AfriwanLib#--------alert--sheet)

# How to use

First step, add AfriwanLib on your Podfile
```groovy
pod 'AfriwanLib'
```


Open your Terminal and run Pod Install. Don’t forget to import AfriwanLib in your Class:
```groovy
import AfriwanLib
```
## [<img src="https://github.com/AfriwanAhda/FileDemo/blob/master/animation.gif" width="28.1" height="50" alt="Animation Demo"/>](https://diponten.com/2019/07/02/create-animation/)    &nbsp;&nbsp;    Create Animation & Round Corner
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
## [<img src="https://github.com/AfriwanAhda/FileDemo/blob/master/loadimage.gif" width="28.1" height="50" alt="Load Image Demo"/>](https://diponten.com/2019/07/04/loadimage/)    &nbsp;&nbsp;    Load Image

Load an image, even there is no internet connection you can see an image that have been loaded before, so it faster to display image and saving internet quota. It's give good experience for user.

With single line of code we can load an image from url without background:
```groovy
image_view.loadImage(imageUrl: "url")
```

Load image with background image before image fully loaded (for example with "AppIcon" image background) with this simple code:
```groovy
image_view.loadImage(imageUrl: "url", backgroundImage: #imageLiteral(resourceName: "AppIcon"))
```
## [<img src="https://github.com/AfriwanAhda/FileDemo/blob/master/connection.gif" width="28.1" height="50" alt="Connection Demo"/>](https://diponten.com/2019/07/02/connection/)    &nbsp;&nbsp;    Check Internet Connection

Very easy to check internet connection
```groovy
if isConnectedToInternet() {
resultText = "Connected"
} else {
resultText = "Not Connected"
}
```
## [<img src="https://github.com/AfriwanAhda/FileDemo/blob/master/toast.gif" width="28.1" height="50" alt="Toast Demo"/>](https://diponten.com/2019/07/08/toast/)    &nbsp;&nbsp;    Dynamic Toast

Simple toast:
```groovy
toast(message: "your message", view: self.view)
```

Custom toast with some parameter, example:
```groovy
toast(message: "This is Toast with parameter added:\ny (vertical position) and height", view: self.view, y: 145, height: 58)
```

Complete toast with modify all parameter, example:
```groovy
toast(message: "Complete Toast with all parameter", view: view, duration: 5, textColor: UIColor.white, backgroundColor: UIColor.blue, y: 179, height: 32, fontSize: 16)
```
## [<img src="https://github.com/AfriwanAhda/FileDemo/blob/master/crypto.gif" width="28.1" height="50" alt="Crypto Demo"/>](https://diponten.com/2019/07/10/sha/)    &nbsp;&nbsp;    Cryptographic Hash Function (SHA)

The SHA (Secure Hash Algorithm) is one of a number of cryptographic hash functions. A cryptographic hash is like a signature for a text or a data file. Hash is a one way function – it cannot be decrypted back. It's implemented in some widely used security applications and protocols, including TLS and SSL, PGP, SSH, S/MIME, IPsec, image caching. Moreover, this makes it suitable for password validation, challenge hash authentication, anti-tamper, digital signatures, etc.
SHA-256 algorithm generates an almost-unique, fixed size 256-bit (32-byte) hash. Convert value to SHA-256:
```groovy
sha256(value: "value to convert")
```
SHA-512 is a cryptographic hash function that when applied to the provided input results in a 128-digit hexadecimal number that is highly unlikely to match the value produced for a different input. Convert value to SHA-512 only with this function:
```groovy
sha512(value: "value to convert")
```
## [<img src="https://github.com/AfriwanAhda/FileDemo/blob/master/alert.gif" width="28.1" height="50" alt="Alert Demo"/>](https://diponten.com/2019/07/12/alert/)    &nbsp;&nbsp;    Alert & Sheet
This is example for show Alert & Sheet easily.
Simple alert:
```groovy
alert(title: "Simple Alert")
```
Custom alert:
```groovy
let yesAction = UIAlertAction(title: "Yes", style: .default) { (action) in
toast(message: "Yes action", view: self.view)
}
let noAction = UIAlertAction(title: "No", style: .destructive) { (action) in
toast(message: "No action", view: self.view)
}
alert(title: "Alert", message: "Custom alert", actions: [yesAction, noAction])
```

Simple sheet:
```groovy
alert(title: "Simple Sheet", style: .actionSheet)
```
Custom sheet:
```groovy
let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
toast(message: "Cancel action", view: self.view)
}
let deleteAction = UIAlertAction(title: "Delete", style: .destructive) { (action) in
toast(message: "Delete action", view: self.view)
}
alert(title: "Are you sure?", message: "You can not undo this action", actions: [cancelAction, deleteAction], style: .actionSheet)
```

# One Library for iOS, iPadOS, and macOS App

The good news, beside iOS app, you can use this library for your iPadOS and macOS app too with Xcode 11, but don't worry with lower Xcode you still can use this library for your iOS app.

Project example include in this Library, you can clone or download from this repository. Use Xcode 11 to open project and choose "AfriwanLibExamples" like picture below:

[<img src="https://github.com/AfriwanAhda/FileDemo/blob/master/xcode.png" alt="Project example"/>](https://developer.apple.com/xcode/whats-new/)


