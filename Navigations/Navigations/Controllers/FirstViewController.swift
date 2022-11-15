//
//  FirstViewController.swift
//  Navigations
//
//  Created by dzmitry on 15.11.22.
//

import UIKit

final class FirstViewController: UIViewController {

    @IBOutlet weak var infoLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Actions
    
    @IBAction func goToSecondAction() {
        performSegue(withIdentifier: "GoToSecondVCModally", sender: "From first VC")
    }
    
    
    // MARK: - Private functions
    

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let str = sender as? String,
            let secondVC = segue.destination as? SecondViewController {
            secondVC.str = str
        }
    }
}
