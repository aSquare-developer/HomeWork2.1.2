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
        
        setupViewElements()
        
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
    
    func setupViewElements() {
        
        redView.layer.cornerRadius = redView.bounds.height / 2
        redView.alpha = 0.3
        
        yellowView.layer.cornerRadius = yellowView.bounds.height / 2
        yellowView.alpha = 0.3
        
        greenView.layer.cornerRadius = greenView.bounds.height / 2
        greenView.alpha = 0.3
        
        button.layer.cornerRadius = 10
        button.setTitle("START", for: .normal)
        
    }
}

