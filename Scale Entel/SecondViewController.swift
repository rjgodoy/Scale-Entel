//
//  SecondViewController.swift
//  Scale Entel
//
//  Created by Rodrigo Godoy Méndez on 4/25/16.
//  Copyright © 2016 Yoyin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        /*
        UIView.animateWithDuration(1.0, animations: { () -> Void in
            self.view.backgroundColor = UIColor.blackColor()
        }) { (Bool) -> Void in
            UIView.animateWithDuration(1.0, animations: { () -> Void in
                self.view.backgroundColor = UIColor.greenColor()
                }, completion: { (Bool) -> Void in
                    UIView.animateWithDuration(1.0, animations: { () -> Void in
                        self.view.backgroundColor = UIColor.grayColor()
                        }, completion: { (Bool) -> Void in
                            UIView.animateWithDuration(1.0, animations: { () -> Void in
                                self.view.backgroundColor = UIColor.redColor()
                                }, completion:nil)
                    })
            })
        }
        */
 
        
        
        UIView.animateWithDuration(1, delay: 0.0, options:[UIViewAnimationOptions.Repeat, UIViewAnimationOptions.Autoreverse], animations: {
            self.view.backgroundColor = UIColor(red: 1, green: 128/255, blue: 0, alpha: 1)
            self.view.backgroundColor = UIColor(red: 254/255, green: 43/255, blue: 2/255, alpha: 1)
        }, completion: nil)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

