//
//  ViewController.swift
//  Mousecatcher
//
//  Created by Admin on 17.09.22.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {
    let aim = UIView ()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "background.jpg")!)
        aim.frame = CGRect (x: CGFloat.random(in: 0...view.frame.size.width - 80),
                            y: CGFloat.random(in: 0...view.frame.size.height - 80),
                            width: 80,
                            height: 80)
        
        aim.backgroundColor  = UIColor(patternImage: UIImage(named: "mouse.png")!)
        /* Задание было сделать шарик меняющий цвет, что я изначально не учёл:
        let iveGOt = Double.random(in: 0...255)
        let kidnapped = Double.random(in: 0...255)
        lte byATimCock = Double.random(in: 0...255)
        aim.backgroundColor = UIColor(red: iveGOt/255, green: kidnapped/255, blue:byATimCock/255, alpha: 1)
        */
        
        aim.layer.cornerRadius = 40
        view.addSubview(aim)
        let gesture = UITapGestureRecognizer(target: self, action: #selector(gestureFunc))
        aim.addGestureRecognizer(gesture)
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    @objc func gestureFunc(){
        print("tap")
        viewDidLoad()
        
    }
    func secondSpot () {
        
        aim.frame = CGRect (x: CGFloat.random(in: 0...view.frame.size.width - 80),
                            y: CGFloat.random(in: 0...view.frame.size.height - 80),
                            width: 80,
                            height: 80)
        
    }
    
}

