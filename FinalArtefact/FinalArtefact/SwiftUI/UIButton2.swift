//
//  UIButton2.swift
//  FinalArtefact
//
//  Created by Ramona Ruoppo on 24/03/22.
//

import SwiftUI
import UIKit

struct UIButton2: UIViewRepresentable {
    func makeUIView(context: Context) -> UIButton {
//      create button
        let button = UIButton(type: .custom)
//        let imageConfiguration = UIImage.SymbolConfiguration(pointSize: 15, weight: .regular, scale: .default)
//        let image = UIImage(systemName: "chevron.right", withConfiguration: imageConfiguration)
        
        button.setTitle("Swift Basics: Progressing ", for: .normal)
        button.setTitleColor(.black, for: .normal)
        
//        button.setImage(image, for: .normal)
//        button.tintColor = UIColor.label
        
//        button.contentHorizontalAlignment = .fill
//        button.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
//        button.titleLabel?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
//        button.imageView?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        
        
//      link the .storyboard file
        let storyboard = UIStoryboard(name: "Storyboard", bundle: .main)
//      indentifier is the storyboard id you gave
        let viewController = storyboard.instantiateViewController(identifier: "NC2")
        
//      insert here half modal controller to make it work more than one time per click
        let action = UIAction{ _ in
//            print("Hello world")
            button.window?.rootViewController?.present(viewController, animated: true)

//          half presented modal
            if let sheet = viewController.sheetPresentationController{
                sheet.detents = [.medium(), .large()]
            }
        }
        
        button.addAction(action, for: .touchUpInside)
        return button
    }
    
    
    func updateUIView(_ uiView: UIButton, context: Context) {
//      no code needed now
    }
}



struct UIButton2_Previews: PreviewProvider {
    static var previews: some View {
        UIButtonView()
    }
}
