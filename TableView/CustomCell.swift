//
//  CustomCell.swift
//  TableView
//
//  Created by Yasemin salan on 25.08.2023.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var personTitleLabel: UILabel!
    
    @IBOutlet weak var personAgeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        //sıfır yapmamızın sebebi içeriğin boyutu kadar olsun demek.
        personAgeLabel.numberOfLines = 0
        personAgeLabel.numberOfLines = 0
        personTitleLabel.font = UIFont.systemFont(ofSize: 21,weight: .bold)
        containerView.backgroundColor = .lightGray.withAlphaComponent(0.3)
        containerView.layer.cornerRadius = 8
        
    }

   
    
}
