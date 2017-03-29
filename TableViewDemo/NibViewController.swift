//
//  NibViewController.swift
//  TableViewDemo
//
//  Created by iFlame. on 28/03/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class NibCustomCell: UITableViewCell {
    
    @IBOutlet weak var cellLabel: UILabel!
    
    @IBOutlet weak var cellImage: UIImageView!
    
    override func awakeFromNib() {
        
    }
}


class NibViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var myTableView: UITableView!
    
    let flags = ["indian", "usa", "british"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.register(UINib(nibName:"NibCustomCell", bundle : nil), forCellReuseIdentifier: "nibCustomCellIdentifier")
        

        myTableView.estimatedRowHeight = 50
        myTableView.rowHeight = UITableViewAutomaticDimension
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let nibCustomCell = tableView.dequeueReusableCell(withIdentifier: "nibCustomCellIdentifier", for: indexPath) as! NibCustomCell
        let flag = flags[indexPath.row]
        nibCustomCell.cellImage?.image = UIImage(named: flag)
        nibCustomCell.cellLabel?.text = flag
        return nibCustomCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("clicked cell \(indexPath.row)")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
