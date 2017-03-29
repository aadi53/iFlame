//
//  ViewController.swift
//  TableViewDemo
//
//  Created by iFlame. on 28/03/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit


/* Custom TableViewCell can be created by following ways
1. Storyboard
2. Using nib
3. Using Custom TableViewCell class (programatically)
 
*/
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let tableViewController  = UITableViewController()
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewController.tableView = myTableView
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK:- Datasource methods
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.detailTextLabel?.text = ""
        return cell
    }
    
    // MARK: Delegate Method
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("row clicked at: \(indexPath.row)")
    }

    

}

