//
//  UIButtonView.swift
//  FinalArtefact
//
//  Created by Ramona Ruoppo on 24/03/22.
//

import SwiftUI
import UIKit

struct UIButtonView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIButton {
//      create button
        let button = UIButton(type: .custom)
        
        button.setTitle("Swift Basics: Beginning ", for: .normal)
        button.setTitleColor(.black, for: .normal)
        
        

        
//      link the .storyboard file
        let storyboard = UIStoryboard(name: "Storyboard", bundle: .main)
//      indentifier is the storyboard id you gave
        let viewController = storyboard.instantiateViewController(identifier: "NC1")
        
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



struct UIButtonView_Previews: PreviewProvider {
    static var previews: some View {
        UIButtonView()
    }
}
