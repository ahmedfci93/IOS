//
//  ViewController.swift
//  AutoLayoutProgrammatically
//
//  Created by Ahmed Ibrahim on 12/1/18.
//  Copyright © 2018 Ahmed Ibrahim. All rights reserved.
//

import UIKit

class AutoLayoutViewController: UIViewController {
    
    let topImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "luffy1"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        //        textView.text = "Join us today in our Ship & Adventures"
        //        textView.font = UIFont.boldSystemFont(ofSize: 18)
        
        let attributedText = NSMutableAttributedString(string: "Join us today at our Ship & Adventure World", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 18)])
        attributedText.append(NSAttributedString(string: "\n\n\nThe story follows the adventures of Monkey D. Luffy, a boy whose body gained the properties of rubber after unintentionally eating a Devil Fruit.", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 13),NSAttributedStringKey.foregroundColor: UIColor.darkGray]))
        
        textView.attributedText = attributedText
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    private let prevButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("PREV", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return button
    }()
    private let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("NEXT", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.mainPink, for: .normal)
        return button
    }()
    private let pageControl: UIPageControl = {
       let pc = UIPageControl()
        pc.currentPage = 0
        pc.numberOfPages = 4
        pc.pageIndicatorTintColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        pc.currentPageIndicatorTintColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        return pc
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        view.addSubview(descriptionTextView)
        setUpLayout()
        setUpBottomControls()
    }
    
    fileprivate func setUpBottomControls(){
        let bottomCntrolsStackView = UIStackView(arrangedSubviews: [prevButton,pageControl,nextButton])
        bottomCntrolsStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomCntrolsStackView.distribution = .fillEqually
//        view.addSubview(prevButton)
        view.addSubview(bottomCntrolsStackView)
        
        NSLayoutConstraint.activate([
            bottomCntrolsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomCntrolsStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomCntrolsStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomCntrolsStackView.heightAnchor.constraint(equalToConstant: 50)])
    }
    
    private func setUpLayout(){
        let topImageContainerView = UIView()
        //        topImageContainerView.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        view.addSubview(topImageContainerView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        topImageContainerView.addSubview(topImageView)
        
        topImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        topImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        topImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.7).isActive = true
        
        
        
        descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 24).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -24).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        
    }
}

extension UIColor{
    static var mainPink = UIColor(red: 232/255, green: 68/255, blue: 133/255, alpha: 1)
}

