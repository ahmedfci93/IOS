//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Ahmed Ibrahim on 10/6/18.
//  Copyright © 2018 Ahmed Ibrahim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    var contentWidth: CGFloat=0.0
    var images = [UIImageView]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewDidAppear(_ animated: Bool) {
        let scrollWidth = scrollView.frame.size.width
        for x in 0...2{
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            var newX: CGFloat = 0.0
            
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            contentWidth += newX
            imageView.frame = CGRect(x: newX-75, y: (scrollView.frame.size.height / 2)-30, width: 150, height: 150)
            scrollView.addSubview(imageView)
        }
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.height)
        
    }


}

