//
//  ViewController.swift
//  RisingCamp_Week2_BurgerKing
//
//  Created by 김민종 on 2021/11/28.
//

import UIKit

class HomeViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!

    @IBOutlet weak var imageBanner1: UIImageView!
    @IBOutlet weak var imageBanner2: UIImageView!
    
    var stackView = UIStackView()
    
    var images: [String] = ["홈배너1", "홈배너2", "홈배너3", "홈배너4", "홈배너5", "홈배너6"]
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageControl.numberOfPages = images.count
        for index in 0..<images.count {
            frame.origin.x = scrollView.frame.size.width * CGFloat(index)
            frame.size = scrollView.frame.size
            
            let imgView = UIImageView(frame: frame)
            imgView.contentMode = .scaleAspectFit
            imgView.image = UIImage(named: images[index])
            self.scrollView.addSubview(imgView)
        }
        scrollView.contentSize = CGSize(width: (scrollView.frame.size.width * CGFloat(images.count)), height: scrollView.frame.size.height)
        scrollView.delegate = self
        
        
        
        imageBanner1.image = UIImage(named: "킹오더 배너")
        imageBanner1.contentMode = .scaleAspectFit
        
        imageBanner2.image = UIImage(named: "딜리버리오토바이 배너")
        imageBanner2.contentMode = .scaleAspectFit

        
//        configureStackView()

    
}


    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageControl.currentPage = Int(pageNumber)
    }
    
//    func configureStackView() {
//        view.addSubview(stackView)
//        stackView.axis = .horizontal
//        stackView.distribution = .fillEqually
//        stackView.spacing = 10
        
        
//    }
    
    
    
    
    
    
    
    
}

