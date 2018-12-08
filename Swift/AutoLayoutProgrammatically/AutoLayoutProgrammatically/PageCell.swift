//
//  PageCell.swift
//  AutoLayoutProgrammatically
//
//  Created by Ahmed Ibrahim on 12/1/18.
//  Copyright © 2018 Ahmed Ibrahim. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    var page: Page?{
        didSet {
            guard let unwrappedPage = page else {return}
            topImageView.image = UIImage(named: unwrappedPage.imageName)
            let attributedText = NSMutableAttributedString(string: unwrappedPage.headerText, attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 18)])
            attributedText.append(NSAttributedString(string: "\n\n\n\(unwrappedPage.bodyText)", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 13),NSAttributedStringKey.foregroundColor: UIColor.darkGray]))

            descriptionTextView.attributedText = attributedText
            descriptionTextView.textAlignment = .center
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setUpLayout()
    }
    private let topImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    private func setUpLayout(){
        let topImageContainerView = UIView()
        addSubview(topImageContainerView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        topImageContainerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        topImageContainerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        
        topImageContainerView.addSubview(topImageView)
        
        topImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        topImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        topImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.7).isActive = true
        
        
        addSubview(descriptionTextView)
        descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: leftAnchor,constant: 24).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: rightAnchor,constant: -24).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
