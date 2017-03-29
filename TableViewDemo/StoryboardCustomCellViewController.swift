//
//  StoryboardCustomCellViewController.swift
//  TableViewDemo
//
//  Created by iFlame. on 28/03/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit


class StoryboardCustomCell: UITableViewCell {
    
    @IBOutlet weak var cellSection: UILabel!
    
    @IBOutlet weak var cellRow: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}


class StoryboardCustomCellViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @IBOutlet weak var myTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(withIdentifier: "storyboardCustomCell", for: indexPath) as! StoryboardCustomCell
        customCell.cellSection?.text = "Section: \(indexPath.section)"
        customCell.cellRow?.text = "Row: \(indexPath.row)"
        return customCell
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
