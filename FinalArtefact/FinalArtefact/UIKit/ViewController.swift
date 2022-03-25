//
//  ViewController.swift
//  FinalArtefact
//
//  Created by Ramona Ruoppo on 24/03/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    @IBOutlet weak var imageOutlet: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageOutlet.layer.cornerRadius = imageOutlet.frame.height/2
    }


    @IBSegueAction func showSwiftUIView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: BranchesView())
    }
}

