//
//  ViewController.swift
//  DayFinder
//
//  Created by karlina.engere on 01/02/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var dayTextField: UITextField!
    
    @IBOutlet weak var monthTextField: UITextField!
    
    @IBOutlet weak var yearTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var findButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func findWeekDay(_ sender: Any) {
        //calendar
        //DateComponent()
        let day = dayTextField.text
        //how to put dy text field in Date Component
        //dateComponents.day = dayTextField.text
        // calendar.date(from: dateComponenta
        
        //DateFormatter()
        //resultLabet.text = result(fromdateComponent)
    }
    
}


