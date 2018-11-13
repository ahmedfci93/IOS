//
//  ViewController.swift
//  Create carousel programmatically without storyboards
//
//  Created by Ahmed Ibrahim on 11/2/18.
//  Copyright © 2018 Ahmed Ibrahim. All rights reserved.
//

import UIKit

class ProjectPageViewController: UIPageViewController, UIPageViewControllerDataSource {
    let imageNames = ["1","2","3","4"]
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        view.backgroundColor = UIColor.black
        let frame = FrameViewController()
        frame.imageName = imageNames.first
        let viewControllers = [frame]
        setViewControllers(viewControllers, direction: .forward, animated: true, completion: nil)
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let currentImageName = (viewController as! FrameViewController).imageName
        let currentIndex = imageNames.index(of: currentImageName!)
        
        if currentIndex!-1 > -1 {
            let frameViewController = FrameViewController()
            frameViewController.imageName = imageNames[currentIndex! - 1]
            return frameViewController
        }
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let currentImageName = (viewController as! FrameViewController).imageName
        let currentIndex = imageNames.index(of: currentImageName!)
        
        if currentIndex! < imageNames.count - 1 {
            let frameViewController = FrameViewController()
            frameViewController.imageName = imageNames[currentIndex! + 1]
            return frameViewController
        }
        return nil
    }
    
}
class FrameViewController: UIViewController {
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.backgroundColor = UIColor.blue
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    var imageName: String? {
        didSet {
            imageView.image = UIImage(named: imageName!)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightGray
        view.addSubview(imageView)
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : imageView]))
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : imageView]))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

