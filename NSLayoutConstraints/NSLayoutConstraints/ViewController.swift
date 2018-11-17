//
//  ViewController.swift
//  NSLayoutConstraints
//
//  Created by Ahmed Ibrahim on 11/13/18.
//  Copyright © 2018 Ahmed Ibrahim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let quoteLabel : UILabel = {
        let label = UILabel()
        label.text = "Do it programmatically or go to storyboard"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.numberOfLines = 3
        label.textAlignment = .center
        label.frame = CGRect(x: 0, y: 0, width: 280, height: 300)
       return label
    }()
    
    let imageView: UIImageView = {
       let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "Luffy.png")
        image.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return image
    }()
    
    let likeButton = ViewController.generateButoonForTitle(title: "Like")
    let shareButton = ViewController.generateButoonForTitle(title: "Share")
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.gray
//        setUpLabelUsingFrame()
//        setUpLabelUsingConstraints()
        setUpNonTrivialConstraintsExample()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if UIInterfaceOrientationIsPortrait(UIApplication.shared.statusBarOrientation){
            quoteLabel.center = CGPoint(x: view.center.x + quoteLabel.frame.width/2, y: view.center.y - quoteLabel.frame.height/2)
        } else {
            quoteLabel.center = CGPoint(x: view.center.x - quoteLabel.frame.width/2, y: view.center.y + quoteLabel.frame.height/2)
        }
    }
    func setUpLabelUsingFrame(){
        quoteLabel.center = view.center
        
        view.addSubview(quoteLabel)
    }
    
    func setUpLabelUsingConstraints(){
        view.addSubview(quoteLabel)
        quoteLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[v0]-16-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": quoteLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": quoteLabel]))
    }
    
    func setUpNonTrivialConstraintsExample (){
//        imageView.frame = CGRect(x: 0, y: 0, width: 200, height: 300)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        likeButton.translatesAutoresizingMaskIntoConstraints = false
        shareButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        view.addSubview(likeButton)
        view.addSubview(shareButton)
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": imageView]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": imageView]))
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[v0(v1)]-16-[v1]-16-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":likeButton , "v1":shareButton]))

        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[v0]-50-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":likeButton]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[v0]-50-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":shareButton]))
    }

    private static func generateButoonForTitle(title:String) -> UIButton{
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.backgroundColor = UIColor.white
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 5
        button.layer.shadowOffset = CGSize(width: 0, height: 0)
        button.layer.shadowOpacity = 0.5
        button.layer.opacity = 0.8
        
        return button
    }

}

