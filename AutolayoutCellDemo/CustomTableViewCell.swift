//
//  CustomTableViewCell.swift
//  AutolayoutCellDemo
//
//  Created by duanhongjin on 6/23/16.
//  Copyright © 2016 duanhongjin. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var imageToLabel: NSLayoutConstraint!
    @IBOutlet weak var imageToMyViewVertical: NSLayoutConstraint!
    @IBOutlet weak var imageToSuperVertical: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        contentView.bringSubviewToFront(myButton)
    }
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        imageToLabel.priority = 999
        imageToSuperVertical.priority = 750
        imageToMyViewVertical.priority = 750
        
        myLabel.hidden = false
        myView.hidden = false
    }
    
    func setImageToMyView() {
        myLabel.hidden = true
        
        imageToLabel.priority = 750
        imageToMyViewVertical.priority = 999
        imageToSuperVertical.priority = 750
    }
    
    func setImageToSuper() {
        myLabel.hidden = true
        myView.hidden = true
        
        imageToLabel.priority = 750
        imageToMyViewVertical.priority = 750
        imageToSuperVertical.priority = 999
    }
}
