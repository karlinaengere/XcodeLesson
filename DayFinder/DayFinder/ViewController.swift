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
        print("find!")
        //calendar
        let calendar = Calendar.current
        
        //DateComponent()
        var dateComponents = DateComponents()
        guard let day = Int(dayTextField.text!), let month = Int(monthTextField.text!), let year = Int(yearTextField.text!)  else {
            //Alert
            warningPopup(withTitle: "Input Error", withMessage: "Date Text Field cn't be empty")
            return
        }
    
        
      //  let day = dayTextField.text
        
        //how to put dy text field in Date Component
        //dateComponents.day = dayTextField.text
        
       dateComponents.day = day
       dateComponents.month = month
       dateComponents.year = year
        // calendar.date(from: dateComponenta
        guard let date = calendar.date(from: dateComponents) else {return}
        //DateFormatter()
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "lv_LV")
        dateFormatter.dateFormat = "EEEE"
        
        switch findButton.titleLabel?.text {
        case "Find":
            findButton.setTitle("Clear",for: .normal)
            if day >= 1 && day <= 31 && month >= 1 && month <= 12 {
                let weekday = dateFormatter.string(from: date)
                let capitalizeWeekday = weekday.capitalized
                resultLabel.text = capitalizeWeekday
            }else{
                //allert
                warningPopup(withTitle: "Wrong Date", withMessage: "Please enter the correct date")
            }
        default:
            findButton.setTitle("Find", for: .normal)
            clearAlltextFields()
        }
        
        
        //resultLabet.text = result(fromdateComponent)
    }
    
    func clearAlltextFields(){
        dayTextField.text = ""
        monthTextField.text = ""
        yearTextField.text = ""
        resultLabel.text = "Day of the week, inside your finder"
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func warningPopup(withTitle title: String?, withMessage message: String?){
        DispatchQueue.main.async {
            let popUp = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okButton = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            popUp.addAction(okButton)
            
            self.present(popUp, animated: true, completion: nil)
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    

        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}


override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "dayFinder"{
        let vc = segue.destination as! AppinfoViewController
        vc.infoText = "DayFinder helsp to find exact weekday for given date."
    }
