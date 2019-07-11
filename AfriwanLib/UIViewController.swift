//  بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ
//
//  UIViewController.swift
//  AfriwanLib
//
//  Created by Afriwan Ahda on 11/07/19.
//  Copyright © 2019 AfriwanAhda. All rights reserved.
//
//  - The origin of this software must not be misrepresented; you must not claim that you wrote the original software. If you use this software in a product, an acknowledgment in the product documentation is required.
//  - Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.
//  - This notice may not be removed or altered from any source or binary distribution.
//

extension UIViewController {
    
    public func alert(title: String, message: String? = nil, actions: [UIAlertAction]? = nil, style: UIAlertController.Style? = nil){
        let alert = UIAlertController(title: title, message: message, preferredStyle: style ?? .alert)
        for action in actions ?? [UIAlertAction(title: "ok", style: .default, handler: nil)] {
            alert.addAction(action)
        }
        self.present(alert, animated: true, completion: nil)
    }
}
