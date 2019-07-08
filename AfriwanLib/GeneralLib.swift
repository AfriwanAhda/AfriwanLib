//  بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ
//
//  GeneralLib.swift
//  AfriwanLib
//
//  Created by Afriwan Ahda on 26/06/19.
//  Copyright © 2019 AfriwanAhda. All rights reserved.
//

import SystemConfiguration
import var CommonCrypto.CC_MD5_DIGEST_LENGTH
import func CommonCrypto.CC_MD5
import typealias CommonCrypto.CC_LONG

public func roundCorner(view: UIView, cornerRadius: CGFloat, shadowOpacity: Float? = nil, shadowRadius: CGFloat? = nil, shadowOffset: CGSize? = nil, masksToBounds: Bool? = nil) {
    view.layer.cornerRadius = cornerRadius
    view.layer.shadowOpacity = shadowOpacity ?? 0.3
    view.layer.shadowRadius = shadowRadius ?? 2.0
    view.layer.shadowOffset = shadowOffset ?? CGSize(width: 0, height: 1)
    view.layer.masksToBounds = masksToBounds ?? false
}

public func pulsate(view: UIView, duration: CFTimeInterval? = nil, autoreverses: Bool? = nil, repeatCount: Float? = nil, initialVelocity: CGFloat? = nil, damping: CGFloat? = nil, fromValue: Any? = nil, toValue: Any? = nil) {
    let pulse = CASpringAnimation(keyPath: "transform.scale")
    pulse.duration = duration ?? 0.2
    pulse.autoreverses = autoreverses ?? true
    pulse.repeatCount = repeatCount ?? 1
    pulse.initialVelocity = initialVelocity ?? 0.5
    pulse.damping = damping ?? 1.0
    pulse.fromValue = fromValue ?? 0.95
    pulse.toValue = toValue ?? 1.0
    view.layer.add(pulse, forKey: nil)
}

public func shake(view: UIView, duration: CFTimeInterval? = nil, autoreverses: Bool? = nil, repeatCount: Float? = nil, fromPoint: CGPoint? = nil, toPoint: CGPoint? = nil) {
    let shake = CABasicAnimation(keyPath: "position")
    shake.duration = duration ?? 0.1
    shake.autoreverses = autoreverses ?? true
    shake.repeatCount = repeatCount ?? 2
    let fromPoint = fromPoint ?? CGPoint(x: view.center.x - 5, y: view.center.y)
    let fromValue = NSValue(cgPoint: fromPoint)
    let toPoint = toPoint ?? CGPoint(x: view.center.x + 5, y: view.center.y)
    let toValue = NSValue(cgPoint: toPoint)
    shake.fromValue = fromValue
    shake.toValue = toValue
    view.layer.add(shake, forKey: "position")
}

public func flash(view: UIView, duration: CFTimeInterval? = nil, autoreverses: Bool? = nil, repeatCount: Float? = nil, fromValue: Any? = nil, toValue: Any? = nil, timingFunction: CAMediaTimingFunction? = nil) {
    let flash = CABasicAnimation(keyPath: "opacity")
    flash.duration = duration ?? 0.5
    flash.autoreverses = autoreverses ?? true
    flash.repeatCount = repeatCount ?? 3
    flash.fromValue = fromValue ?? 1
    flash.toValue = toValue ?? 0.1
    flash.timingFunction = timingFunction ?? CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
    view.layer.add(flash, forKey: nil)
}

public func isConnectedToInternet() -> Bool {
    var zeroAddress = sockaddr_in(sin_len: 0, sin_family: 0, sin_port: 0, sin_addr: in_addr(s_addr: 0), sin_zero: (0, 0, 0, 0, 0, 0, 0, 0))
    zeroAddress.sin_len = UInt8(MemoryLayout.size(ofValue: zeroAddress))
    zeroAddress.sin_family = sa_family_t(AF_INET)
    let defaultRouteReachability = withUnsafePointer(to: &zeroAddress) {
        $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {zeroSockAddress in
            SCNetworkReachabilityCreateWithAddress(nil, zeroSockAddress)
        }
    }
    var flags: SCNetworkReachabilityFlags = SCNetworkReachabilityFlags(rawValue: 0)
    if SCNetworkReachabilityGetFlags(defaultRouteReachability!, &flags) == false {
        return false
    }
    let isReachable = (flags.rawValue & UInt32(kSCNetworkFlagsReachable)) != 0
    let needsConnection = (flags.rawValue & UInt32(kSCNetworkFlagsConnectionRequired)) != 0
    let ret = (isReachable && !needsConnection)
    return ret
}

func MD5(string: String) -> Data {
    let length = Int(CC_MD5_DIGEST_LENGTH)
    let messageData = string.data(using:.utf8)!
    var digestData = Data(count: length)
    _ = digestData.withUnsafeMutableBytes { digestBytes -> UInt8 in
        messageData.withUnsafeBytes { messageBytes -> UInt8 in
            if let messageBytesBaseAddress = messageBytes.baseAddress, let digestBytesBlindMemory = digestBytes.bindMemory(to: UInt8.self).baseAddress {
                let messageLength = CC_LONG(messageData.count)
                CC_MD5(messageBytesBaseAddress, messageLength, digestBytesBlindMemory)
            }
            return 0
        }
    }
    return digestData
}

public func toast(message: String, view: UIView, duration: Double? = nil, textColor: UIColor? = nil,backgroundColor: UIColor? = nil, y: CGFloat? = nil, height: CGFloat? = nil, fontSize: CGFloat? = nil) {
    let animation: UIView.AnimationOptions = .curveEaseOut
    let y = view.frame.size.height - (y ?? 85)
    let alpha = 0.0
    let toastLabel: UILabel = UILabel()
    toastLabel.textColor = textColor ?? UIColor.white
    toastLabel.backgroundColor = backgroundColor ?? UIColor.darkGray
    toastLabel.font = UIFont.systemFont(ofSize: fontSize ?? 17)
    toastLabel.textAlignment = .center;
    toastLabel.text = message
    toastLabel.alpha = 1.0
    toastLabel.clipsToBounds  =  true
    toastLabel.layer.cornerRadius = 15;
    toastLabel.sizeToFit()
    toastLabel.numberOfLines = 0
    let widthLabel = toastLabel.frame.width
    let heightLabel = toastLabel.frame.height
    var width = widthLabel + 30
    let height = height ?? (heightLabel + 12)
    if width > view.frame.width - 15 {
        width = view.frame.width - 25
    }
    toastLabel.frame = CGRect(x: view.frame.size.width/2 - (width/2), y: y, width: width, height: height)
    view.addSubview(toastLabel)
    UIView.animate(withDuration: duration ?? 3.0, delay: 0.1, options: animation, animations: {
        toastLabel.alpha = CGFloat(alpha)
    }, completion: {(isCompleted) in
        toastLabel.removeFromSuperview()
    })
}
