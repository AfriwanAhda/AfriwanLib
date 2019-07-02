//  بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ
//
//  CacheManager.swift
//  AfriwanLib
//
//  Created by Afriwan Ahda on 01/07/19.
//  Copyright © 2019 AfriwanAhda. All rights reserved.
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
