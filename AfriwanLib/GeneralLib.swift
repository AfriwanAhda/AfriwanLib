//
//  GeneralLib.swift
//  AfriwanLib
//
//  Created by Afriwan Ahda on 26/06/19.
//  Copyright © 2019 AfriwanAhda. All rights reserved.
//

import Foundation

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


