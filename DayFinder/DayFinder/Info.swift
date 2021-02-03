//
//  Info.swift
//  DayFinder
//
//  Created by karlina.engere on 02/02/2021.
//

import UIKit

class Info: UIViewController {

    
    
    var infoText: String()
    let  appDescText = "This app is a home work project."
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appDescLabel.text = appDescText

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
