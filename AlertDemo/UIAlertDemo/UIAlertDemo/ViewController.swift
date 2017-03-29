//
//  ViewController.swift
//  UIAlertDemo
//
//  Created by iFlame. on 29/03/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

/* 
 Alert can be displayed as two type

 1. Alert
 2. ActionSheet
 
 Steps:
 1. init UIAlertViewController with title and message
 2. create buttons by initializing UIAlertAction
 3. add buttons to UIAlertViewController instance
 4. Present UIAlertViewController
*/


class ViewController: UIViewController {
    
    let messageHandler : (UIAlertAction) -> () = { _ in
        print("outer hander called")

    }
    
    
    @IBAction func showAlertSheet(_ sender: UIButton) {
        let alertHandler = UIAlertController(title: "Hello Alert!!", message: "First demo of action sheet", preferredStyle: .actionSheet)
        let okButton = UIAlertAction(title: "Ok", style: .default, handler: messageHandler)
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
            print("Cancel button pressed")
        })
        
        alertHandler.addAction(okButton)
        alertHandler.addAction(cancelButton)
        
        present(alertHandler.self, animated: true, completion: nil)
    }
    
    @IBAction func showAlert(_ sender: UIButton) {
        
        let alertHandler = UIAlertController(title: "Hello Alert!!", message: "First demo of alert", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default, handler: messageHandler)
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
            print("Cancel button pressed")
        })
        
        alertHandler.addAction(okButton)
        alertHandler.addAction(cancelButton)
        
        present(alertHandler.self, animated: true, completion: nil)
        
        
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

