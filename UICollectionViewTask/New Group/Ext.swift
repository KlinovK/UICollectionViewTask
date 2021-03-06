//
//  Ext.swift
//  UICollectionViewTask
//
//  Created by Константин Клинов on 7/31/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import UIKit


extension UIViewController {
    
    // MARK: Present detail custom animation
    
    func presentDetail(_ viewControlletToPresent: UIViewController){
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        self.view.window?.layer.add( transition, forKey: kCATransition)
        
        present(viewControlletToPresent, animated: false, completion: nil)
    }
    
    // MARK: Animation for dismiss action
    
    func dismissDetail(_ viewControlletToPresent: UIViewController){
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromLeft
        self.view.window?.layer.add( transition, forKey: kCATransition)
        
        dismiss(animated: false, completion: nil)
    }
    
}
