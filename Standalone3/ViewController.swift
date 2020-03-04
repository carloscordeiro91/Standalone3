//
//  ViewController.swift
//  Standalone3
//
//  Created by itsector on 04/03/2020.
//  Copyright © 2020 itsector. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var practiceView: UIView = {
       
        let _practiceView = UIView()
        
        _practiceView.frame = CGRect(x: 0, y: 30, width: 100, height: 100)
        
        _practiceView.layer.backgroundColor = UIColor.red.cgColor
        
        return _practiceView
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(practiceView)
        
        let viewTap = UIGestureRecognizer(target: self, action: #selector(animateGroup))
        
        practiceView.addGestureRecognizer(viewTap)
        
        practiceView.isUserInteractionEnabled = true
    }
    
    
    @objc func animateGroup() {
        
        
        let basicAnimation = CABasicAnimation(keyPath: "position.x")
        
        basicAnimation.fromValue = practiceView.layer.position.x
        
        basicAnimation.toValue = practiceView.layer.position.x + 250
        
        let keyFrameAnimation = CAKeyframeAnimation(keyPath: "backgroungColor")
        
        keyFrameAnimation.values = [UIColor.red.cgColor, UIColor.green.cgColor, UIColor.blue.cgColor, UIColor.red.cgColor]
        
        keyFrameAnimation.keyTimes = [0, 0.25, 0.75, 1]
        
        let animGroup = CAAnimationGroup()
        
        animGroup.duration = 4
        
        animGroup.animations = [basicAnimation, keyFrameAnimation]
        
        practiceView.layer.add(animGroup, forKey: nil)
        
        
    }


}

