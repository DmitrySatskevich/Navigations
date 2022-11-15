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
    
    @IBAction func goToSecondWithoutSegue() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let secondVC = storyboard.instantiateViewController(
            withIdentifier: "SecondViewController") as? SecondViewController {
            secondVC.str = "Передача данных на SecondVC без использования Segue"
            navigationController?.pushViewController(secondVC, animated: true)
        }
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
