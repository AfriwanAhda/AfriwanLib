//  بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ
//
//  UIImageView.swift
//  AfriwanLib
//
//  Created by Afriwan Ahda on 01/07/19.
//  Copyright © 2019 AfriwanAhda. All rights reserved.
//
//  - The origin of this software must not be misrepresented; you must not claim that you wrote the original software. If you use this software in a product, an acknowledgment in the product documentation is required.
//  - Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.
//  - This notice may not be removed or altered from any source or binary distribution.
//

extension UIImageView {
    
    public func loadImage(imageUrl url: String, backgroundImage: UIImage? = nil){
        DispatchQueue.main.async { self.image = backgroundImage }
        let imageName = sha256(value: url)
        if let cachedImage = CacheManager.sharedInstance.getCachedImage(imageName: imageName) {
            DispatchQueue.main.async{ self.image = cachedImage }
            return
        } else {
            let filemanager    = FileManager.default
            let documentDir    = try! filemanager.url(for: .cachesDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            let imageCacheDir  = documentDir.appendingPathComponent(".cachedImage").path
            if !filemanager.fileExists(atPath: imageCacheDir){
                try! filemanager.createDirectory(atPath: imageCacheDir, withIntermediateDirectories: false, attributes: nil)
            }
            let imageDirectory = URL(fileURLWithPath: imageCacheDir).appendingPathComponent(imageName)
            if filemanager.fileExists(atPath: imageDirectory.path){
                DispatchQueue.main.async {self.image = UIImage(contentsOfFile: imageDirectory.path)}
            } else {
                DispatchQueue.main.async { self.image = backgroundImage }
                guard let imageUrl = URL(string: url) else { return }
                var request = URLRequest(url: imageUrl)
                request.timeoutInterval = 15
                request.cachePolicy = .reloadIgnoringLocalAndRemoteCacheData
                let session = URLSession.shared
                let task = session.dataTask(with: request, completionHandler: {
                    (data, response, error) in
                    guard error == nil else { return }
                    guard let response = response as? HTTPURLResponse else { return }
                    let statusCode = response.statusCode
                    guard statusCode == 200 else { return }
                    guard let data = data else { return }
                    DispatchQueue.global(qos: .userInteractive).async {
                        guard let image = UIImage(data: data) else { return }
                        DispatchQueue.main.async { self.image = image }
                        try? image.pngData()?.write(to: imageDirectory)
                        CacheManager.sharedInstance.cacheImage(image: image, imageName: imageName)
                    }
                })
                task.resume()
            }
        }
    }
    
}
