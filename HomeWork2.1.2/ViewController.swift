//
//  ViewController.swift
//  HomeWork2.1.2
//
//  Created by Artur Anissimov on 19.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        button.layer.cornerRadius = 10
        button.setTitle("START", for: .normal)
        
    }

    @IBAction func buttonAction(_ sender: Any) {
        
        switch button.tag {
        case 0:
            greenView.alpha = 0.3
            redView.alpha = 1
            button.setTitle("NEXT", for: .normal)
            button.tag = 2
        case 2:
            redView.alpha = 0.3
            yellowView.alpha = 1
            button.tag = 3
        case 3:
            yellowView.alpha = 0.3
            greenView.alpha = 1
            button.tag = 0
        default:
            break
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        redView.layer.cornerRadius = redView.bounds.height / 2
        yellowView.layer.cornerRadius = yellowView.frame.size.height / 2
        greenView.layer.cornerRadius = greenView.bounds.height / 2
    }
    
//    override func viewWillLayoutSubviews() {
//        redView.layer.cornerRadius = redView.bounds.height / 2
//        yellowView.layer.cornerRadius = yellowView.frame.size.height / 2
//        greenView.layer.cornerRadius = greenView.bounds.height / 2
//    }
    
}

