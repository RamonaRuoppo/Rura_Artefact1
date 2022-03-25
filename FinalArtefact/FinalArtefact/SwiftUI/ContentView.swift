//
//  ContentView.swift
//  FinalArtefact
//
//  Created by Ramona Ruoppo on 24/03/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack{
            UIButtonView()
                .frame(width: 100.0, height: 100.0)
        }
        .edgesIgnoringSafeArea(.all)
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
