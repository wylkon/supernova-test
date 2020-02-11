//
//  AndroidViewController.swift
//  Project
//
//  Created by [Author].
//  Copyright © 2018 [Company]. All rights reserved.
//

// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Import

import UIKit


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Implementation

class AndroidViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var viewView: UIView!
    @IBOutlet weak var rectangleButton: SupernovaButton!
    @IBOutlet weak var operationImageView: UIImageView!


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Lifecycle

    override public func viewDidLoad()  {
        super.viewDidLoad()
        self.setupComponents()
        self.setupUI()
        self.setupGestureRecognizers()
        self.setupLocalization()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override public func viewWillAppear(_ animated: Bool)  {
        super.viewWillAppear(animated)
        
        // Navigation bar, if any
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Setup

    private func setupComponents()  {
        // Setup viewView
        
        // Setup rectangleButton
        self.rectangleButton.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor /* #FFFFFF */
        self.rectangleButton.layer.borderWidth = 5
        
        self.rectangleButton.snImageTextSpacing = 10
        
        // Setup operationImageView
        
    }

    private func setupUI()  {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    private func setupGestureRecognizers()  {
    
    }

    private func setupLocalization()  {
    
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Status Bar

    override public var prefersStatusBarHidden: Bool  {
        return true
    }

    override public var preferredStatusBarStyle: UIStatusBarStyle  {
        return .default
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Actions

    @IBAction public func onRectanglePressed(_ sender: UIButton)  {
        self.animationOne()
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Animations

    private func animationOne()  {
        let animationElement1 = CAAnimationGroup()
        animationElement1.isRemovedOnCompletion = false
        animationElement1.fillMode = .removed
        animationElement1.animations = []
        
        let animationProperty1 = CAKeyframeAnimation()
        animationProperty1.beginTime = 0
        animationProperty1.repeatCount = Float(1)
        animationProperty1.duration = 1
        animationProperty1.autoreverses = false
        animationProperty1.isRemovedOnCompletion = false
        animationProperty1.timingFunction = CAMediaTimingFunction(controlPoints: 0.22, 0.61, 0.36, 1)
        animationProperty1.keyPath = "transform.scale"
        animationProperty1.keyTimes = [ 0, 0.2, 0.4, 0.6, 0.8, 1 ]
        animationProperty1.values = [ 0.3, 1.1, 0.9, 1.03, 0.97, 1 ]
        animationProperty1.animations?.append(animationProperty1)
        
        
        let animationProperty2 = CAKeyframeAnimation()
        animationProperty2.beginTime = 0
        animationProperty2.repeatCount = Float(1)
        animationProperty2.duration = 1
        animationProperty2.autoreverses = false
        animationProperty2.isRemovedOnCompletion = false
        animationProperty2.timingFunction = CAMediaTimingFunction(controlPoints: 0.22, 0.61, 0.36, 1)
        animationProperty2.keyPath = "opacity"
        animationProperty2.keyTimes = [ 0, 0.6, 1 ]
        animationProperty2.values = [ 0, 1, 1 ]
        animationProperty2.animations?.append(animationProperty2)
        
        
        self.viewView.layer.add(animationElement1, forKey: nil)
        let animationElement2 = CAAnimationGroup()
        animationElement2.isRemovedOnCompletion = false
        animationElement2.fillMode = .removed
        animationElement2.animations = []
        
        let animationProperty3 = CABasicAnimation()
        animationProperty3.beginTime = 0
        animationProperty3.repeatCount = Float(1)
        animationProperty3.duration = 1
        animationProperty3.autoreverses = false
        animationProperty3.isRemovedOnCompletion = false
        animationProperty3.timingFunction = CAMediaTimingFunction(controlPoints: 0, 0, 1, 1)
        animationProperty3.keyPath = "transform.rotation.z"
        animationProperty3.fromValue = -200 / 180 * Double.pi
        animationProperty3.toValue = -200 / 180 * Double.pi
        animationProperty3.animations?.append(animationProperty3)
        
        
        let animationProperty4 = CABasicAnimation()
        animationProperty4.beginTime = 0
        animationProperty4.repeatCount = Float(1)
        animationProperty4.duration = 1
        animationProperty4.autoreverses = false
        animationProperty4.isRemovedOnCompletion = false
        animationProperty4.timingFunction = CAMediaTimingFunction(controlPoints: 0, 0, 1, 1)
        animationProperty4.keyPath = "opacity"
        animationProperty4.fromValue = 0
        animationProperty4.toValue = 0
        animationProperty4.animations?.append(animationProperty4)
        
        
        self.operationImageView.layer.add(animationElement2, forKey: nil)
    }
}
