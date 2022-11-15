//
//  FourthViewController.swift
//  Navigations
//
//  Created by dzmitry on 15.11.22.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var dataString: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = dataString
    }
    
    @IBAction func goBack() {
        performSegue(withIdentifier: "unwindToFirstVC", sender: "unwindToFirstVC from FourthVC")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let str = sender as? String,
            let firthVC = segue.destination as? SecondViewController {
            firthVC.infoLbl.text = str
        }
    }
}
