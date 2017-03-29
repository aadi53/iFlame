//
//  CustomCellClassViewController.swift
//  TableViewDemo
//
//  Created by iFlame. on 28/03/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class CustomClassCell: UITableViewCell {
    var cellLable : String?
    var cellImage : UIImage?
    
    var label : UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        label = UILabel.init(frame: self.frame)
        label.textAlignment = .right
        label.backgroundColor = UIColor.lightGray
        self.addSubview(label)
        label.autoresizingMask = [.flexibleWidth]
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class CustomCellClassViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var myTableView: UITableView!
    
    let flags = ["indian", "usa", "british"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.register(CustomClassCell.self, forCellReuseIdentifier: "CustomClassCell")
        //Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flags.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let classCustomCell = tableView.dequeueReusableCell(withIdentifier: "CustomClassCell", for: indexPath) as! CustomClassCell
        classCustomCell.label.text = flags[indexPath.row]
        
        return classCustomCell
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
