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
    
    @IBAction func goToThirdVCByXIB() {
        let vc = ThirdViewController(nibName: "ThirdViewController", bundle: nil)
        vc.dataString = "Переход из первого"
        vc.navigationItem.title = "XIB VC"
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func goToVCBySeparetadStoryboardWithoutSegue() {
        let storyboard = UIStoryboard(name: "SecondStoryboard", bundle: nil)
        if let fourthVC = storyboard.instantiateViewController(
            withIdentifier: "FourthViewController") as? FourthViewController {
            fourthVC.dataString = "Передача данных на SecondVC без Segue"
            navigationController?.pushViewController(fourthVC, animated: true)
        }
    }
    
// передача данных с SecondStoryboard в label первого Storyboard
    @IBAction func unwindToFirst(_ unwindSegue: UIStoryboardSegue) {
//        if let sourceViewController = unwindSegue.source as? FourthViewController {
//            infoLbl.text = sourceViewController.dataString
//        }
        
    }
    
    // MARK: - Private functions

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let str = sender as? String,
            let secondVC = segue.destination as? SecondViewController {
            secondVC.str = str
        } else if let fourthVC = segue.destination as? FourthViewController {
            fourthVC.dataString = "Переход на SecondStoryboard"
        }
    }
}
