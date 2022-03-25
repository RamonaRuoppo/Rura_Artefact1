//
//  TableViewCell2.swift
//  FinalArtefact
//
//  Created by Ramona Ruoppo on 24/03/22.
//


import Foundation
import UIKit

class TasksTableViewCell2: UITableViewCell {
        
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    @IBAction func buttonAction(_ sender: Any) {
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func update(with tasks2: Tasks) {
        nameLabel.text = tasks2.title
//        button.backgroundColor = tasks2.isCompleted ? .yellow : .green
    }
    
}
