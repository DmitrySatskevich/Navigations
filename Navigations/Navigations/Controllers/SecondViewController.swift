//
//  SecondViewController.swift
//  Navigations
//
//  Created by dzmitry on 15.11.22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var infoLbl: UILabel!
    var str: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        infoLbl.text = str
    }
    
    @IBAction func closeVC() {
        dismiss(animated: true)
    }
}
