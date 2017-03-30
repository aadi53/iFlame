//
//  LoginViewController.swift
//  TabbarDemo
//
//  Created by iFlame. on 30/03/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class UserModel {
    
    var name : String?
    var address : String?
    
    var id : Int?
}


class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func buttonLoginPressed() {
        let appdelegate = UIApplication.shared.delegate as! AppDelegate
        appdelegate.showTabbar()
    }
    

}
