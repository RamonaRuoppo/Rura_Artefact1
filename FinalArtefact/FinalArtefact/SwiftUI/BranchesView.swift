//
//  BranchesView.swift
//  FinalArtefact
//
//  Created by Ramona Ruoppo on 24/03/22.
//

import SwiftUI

struct BranchesView: View {
    var body: some View {
                    
            List {
                
                Text("Choose one of the following branches")
                    .font(.title3)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                
                
                UIButtonView()
                    .listRowSeparator(.hidden)
                

                UIButton2()
                    .listRowSeparator(.hidden)

            }
            .listStyle(.plain)
            .navigationTitle("Branches")
    }
}

struct BranchesView_Previews: PreviewProvider {
    static var previews: some View {
        BranchesView()
    }
}
