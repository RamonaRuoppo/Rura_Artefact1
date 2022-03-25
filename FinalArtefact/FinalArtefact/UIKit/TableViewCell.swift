//
//  TableViewCell.swift
//  FinalArtefact
//
//  Created by Ramona Ruoppo on 24/03/22.
//

import Foundation
import UIKit

class TasksTableViewCell: UITableViewCell {
        
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        self.accessoryType = .disclosureIndicator
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func update(with tasks1: Tasks) {
        nameLabel.text = tasks1.title
    }
    
}
