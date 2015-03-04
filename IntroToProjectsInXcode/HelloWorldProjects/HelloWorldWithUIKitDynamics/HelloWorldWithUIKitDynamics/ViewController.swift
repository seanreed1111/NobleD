//
//  ViewController.swift
//  HelloWorldWithUIKitDynamics
//
//  Created by Sean Reed on 2/21/15.
//  Copyright (c) 2015 Sean Reed. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIDynamicAnimatorDelegate {
    @IBOutlet weak var label: UILabel!
    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    var collision: UICollisionBehavior!
    var bounce: UIDynamicItemBehavior!
    
    override func viewWillAppear(animated:Bool) {
        super.viewWillAppear(animated)
        
        animator = UIDynamicAnimator(referenceView: self.view)
        
        bounce  = UIDynamicItemBehavior(items: [label])
        bounce.elasticity = CGFloat(0.97)
        
        gravity = UIGravityBehavior(items: [label])
        gravity.gravityDirection = CGVectorMake(0,1)
        
        
        collision = UICollisionBehavior(items: [label])
        collision.translatesReferenceBoundsIntoBoundary = true
        
        animator.addBehavior(bounce)
        animator.addBehavior(collision)
        animator.addBehavior(gravity)

    }


}

