//
//  ViewController.swift
//  HandleMotionShake
//
//  Created by hiraya.shingo on 2017/10/24.
//

import UIKit

class ViewController: UIViewController {

    // http://gootara.org/library/2016/10/s3sk.html
    
    override var canBecomeFirstResponder: Bool { get { return true } }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.becomeFirstResponder()
    }
    
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        print("motionBegan - subtype: \(motion.rawValue) with \(String(describing: event))")
        if motion == UIEventSubtype.motionShake {
            print("  SHAKE!!")
        }
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        print("motionEnded - subtype: \(motion.rawValue) with \(String(describing: event))")
        if motion == UIEventSubtype.motionShake {
            print("  SHAKE!!!")
        }
    }
    
    override func motionCancelled(_ motion: UIEventSubtype, with event: UIEvent?) {
        print("motionCancelled - subtype: \(motion.rawValue) with \(String(describing: event))")
        if motion == UIEventSubtype.motionShake {
            print("  SHAKE...")
        }
    }
}
