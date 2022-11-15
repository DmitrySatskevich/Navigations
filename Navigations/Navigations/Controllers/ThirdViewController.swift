//
//  ThirdViewController.swift
//  Navigations
//
//  Created by dzmitry on 15.11.22.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var dataString: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = dataString
    }
    
    @IBAction func goBack() {
        
    }

}
