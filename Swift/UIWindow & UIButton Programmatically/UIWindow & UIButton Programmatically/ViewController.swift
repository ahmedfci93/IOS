//
//  ViewController.swift
//  UIWindow & UIButton Programmatically
//
//  Created by Ahmed Ibrahim on 1/7/19.
//  Copyright © 2019 Ahmed Ibrahim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let button: UIButton = {
        let btn = UIButton()
        btn.setTitle("Welcome", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = UIColor(displayP3Red: 25/255, green: 56/255, blue: 45/255, alpha: 1)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .blue
        
        view.addSubview(button)
        setUpBtn()
    }
    
    func setUpBtn(){
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.widthAnchor.constraint(greaterThanOrEqualToConstant: 200).isActive = true
        button.heightAnchor.constraint(greaterThanOrEqualToConstant: 50).isActive = true
    }
    
}

