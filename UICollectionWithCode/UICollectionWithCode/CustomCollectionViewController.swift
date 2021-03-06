//
//  ViewController.swift
//  UICollectionWithCode
//
//  Created by Ahmed Ibrahim on 10/19/18.
//  Copyright © 2018 Ahmed Ibrahim. All rights reserved.
//

import UIKit

class CustomCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let customCellIdentifier = "customCellIdentifier"
    let names = ["Ahmed Ibrahim","Belal Ali","Badr Ali","Hossam Ibrahim","Ali Gamal"]
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = UIColor.darkGray
        
        collectionView?.register(CustomCell.self, forCellWithReuseIdentifier: customCellIdentifier)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let customCell = collectionView.dequeueReusableCell(withReuseIdentifier: customCellIdentifier, for: indexPath) as! CustomCell
        customCell.nameLabel.text = names [indexPath.item]
        return customCell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 200.0)
    }
    
}

class CustomCell: UICollectionViewCell{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Custom Text"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        return label
    }()
    
    func setUpView() {
        backgroundColor = UIColor.black
        addSubview(self.nameLabel)
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-60-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-5-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameLabel]))
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init (coder:) has not been implemented")
    }
}
