//
//  ViewController.swift
//  Question7
//
//  Created by english on 2019-12-11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnLogin(_ sender: Any) {
        
        if userName.text != "" {
            performSegue(withIdentifier: "second", sender: nil)
        }

    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "second" {
            var des = segue.destination as! SecondViewController
            des.userName = userName.text!
        }
    }
    
}

