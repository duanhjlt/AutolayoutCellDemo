//
//  ViewController.swift
//  AutolayoutCellDemo
//
//  Created by duanhongjin on 6/23/16.
//  Copyright © 2016 duanhongjin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let customCell: CustomTableViewCell = tableView.dequeueReusableCellWithIdentifier("customCell") as! CustomTableViewCell
        
        customCell.myImageView.image = UIImage(named: "niujiao")
        
        if indexPath.row == 1{
            customCell.setImageToSuper()
        }
        
        if indexPath.row == 0 {
            customCell.setImageToMyView()
        }
        
        return customCell
    }
}