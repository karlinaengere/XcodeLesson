//
//  AppearenceViewController.swift
//  DayFinder
//
//  Created by karlina.engere on 02/02/2021.
//

import UIKit

class AppearenceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func setLabelText(){
        var text  = "Unable to specify UI Style"
        if self.traitCollection.userInterfaceStyle == .dark {
            text = "Dark Mode is on. \n Go to settings if you would like \nto change to Light mode"
        }else{
            text = "Dark Mode is on. \n Go to settings if you would like \nto change to Light mode"
        }
        
        textLabel.text = text
    }
    
}

    func openSettings(){
        guard let settingsURL = URL(string:UIApplication.openSettingsURLString) else {
            return
    }
        if UIApplication.shared.canOpenURL(settingsURL){
            UIApplication.shared.open(settingsURL, options: [:]) { (success) in
                print("open: ", success)
        }
}
    }


extension AppearenceViewController {
    override func traitCollection: UITraitCollection
}
