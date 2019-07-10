//  بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ
//
//  CacheManager.swift
//  AfriwanLib
//
//  Created by Afriwan Ahda on 01/07/19.
//  Copyright © 2019 AfriwanAhda. All rights reserved.
//
//  - The origin of this software must not be misrepresented; you must not claim that you wrote the original software. If you use this software in a product, an acknowledgment in the product documentation is required.
//  - Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.
//  - This notice may not be removed or altered from any source or binary distribution.
//

class CacheManager: NSObject {
    private var cache: NSCache<NSString,UIImage>?
    static let sharedInstance: CacheManager = {
        return CacheManager()
    }()
    override init(){
        super.init()
        cache = NSCache<NSString, UIImage>()
        cache?.countLimit = 200
    }
    func cacheImage(image: UIImage, imageName: String){
        cache?.setObject(image, forKey: imageName as NSString)
    }
    func getCachedImage(imageName: String) -> UIImage?{
        return cache?.object(forKey: imageName as NSString)
    }
    func clearCache(){
        cache?.removeAllObjects()
    }
}
