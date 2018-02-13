//
//  ViewController.swift
//  superbuttons
//
//  Created by Martina Calluori on 2/13/18.
//  Copyright © 2018 Martina Calluori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var toggleFlag: Bool = true;
    
    @IBOutlet weak var hemorrhoids: UIButton!
    
    @IBAction func hemorrhoidsFun(_ sender: Any) {
        
        if (toggleFlag == true) {
            hemorrhoids.tintColor = UIColor.init(named: "sadness")
            hemorrhoids.setBackgroundImage(UIImage(named: "people"), for: .normal)
            toggleFlag = false
        } else {
            hemorrhoids.tintColor = UIColor.init(named: "fish")
            hemorrhoids.setBackgroundImage(UIImage(named: "man_woman"), for: .normal)
            toggleFlag = true
        }
        
        let myAlert = UIAlertController(title: "Floor Preference", message: "My living room floor is?", preferredStyle: .alert)
        
        myAlert.addAction(UIAlertAction(title: "carpet", style: .default, handler: nil))
        myAlert.addAction(UIAlertAction(title: "wood", style: .default, handler: {
            ACTION in
            print("User Picked Wood")
        }))
        
        self.present(myAlert, animated:true)
        
      
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

