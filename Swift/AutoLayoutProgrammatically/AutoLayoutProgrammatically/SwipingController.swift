//
//  SwipingController.swift
//  AutoLayoutProgrammatically
//
//  Created by Ahmed Ibrahim on 12/1/18.
//  Copyright © 2018 Ahmed Ibrahim. All rights reserved.
//

import UIKit
class SwipingController: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    let pages = [
        Page(imageName: "luffy", headerText: "Join us today at our Ship & Adventure World",bodyText:"The story follows the adventures of Monkey D. Luffy, a boy whose body gained the properties of rubber after unintentionally eating a Devil Fruit."),
         Page(imageName: "sanji", headerText: "Join us today at our Ship & Adventure World",bodyText:"Vinsmoke Sanji is the cook of the Straw Hat Pirates, as well as the former sous chef of the Baratie. He is also the third son of the Vinsmoke Family"),
          Page(imageName: "zoro", headerText: "Join us today at our Ship & Adventure World",bodyText:"Roronoa Zoro,also known as Pirate Hunter Zoro, is the combatant of the Straw Hat Pirates and a former bounty hunter")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpBottomControls()
        collectionView?.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        collectionView?.register(PageCell.self, forCellWithReuseIdentifier: "cellId")
        collectionView?.isPagingEnabled = true
    }
    override func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let x = targetContentOffset.pointee.x
        pageControl.currentPage = Int(x / view.frame.width)
    }
    fileprivate func setUpBottomControls(){
        let bottomCntrolsStackView = UIStackView(arrangedSubviews: [prevButton,pageControl,nextButton])
        bottomCntrolsStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomCntrolsStackView.distribution = .fillEqually
        view.addSubview(bottomCntrolsStackView)
        
        NSLayoutConstraint.activate([
            bottomCntrolsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomCntrolsStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomCntrolsStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomCntrolsStackView.heightAnchor.constraint(equalToConstant: 50)])
    }
    private let prevButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("PREV", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.addTarget(self, action: #selector(handlePrev), for: .touchUpInside)
        return button
    }()
    @objc private func handlePrev(){
        let prevInd =  max(pageControl.currentPage - 1 ,0)
        let indexPath = IndexPath(item: prevInd, section: 0)
        pageControl.currentPage = prevInd
        collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
    private let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("NEXT", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.mainPink, for: .normal)
        button.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
        return button
    }()

    @objc private func handleNext(){
        let nextInd =  min(pageControl.currentPage + 1 ,pages.count - 1)
        let indexPath = IndexPath(item: nextInd, section: 0)
        pageControl.currentPage = nextInd
        collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
    lazy var pageControl: UIPageControl = {
        let pc = UIPageControl()
        pc.currentPage = 0
        pc.numberOfPages = pages.count
        pc.pageIndicatorTintColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        pc.currentPageIndicatorTintColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        return pc
    }()
}
