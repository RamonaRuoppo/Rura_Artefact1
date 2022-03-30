//
//  BranchesView.swift
//  FinalArtefact
//
//  Created by Ramona Ruoppo on 24/03/22.
//

import SwiftUI

extension Color {
    public static var lightBlue: Color {
        return Color(UIColor(red: 98/255, green: 176/255, blue: 255/255, alpha: 1.0))
    }
}
struct BranchesView: View {
    var body: some View {
                    
            List {
                
                Text("Choose one of the following branches:")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                
                UIButtonView()
                    .listRowSeparator(.hidden)
                    .background(Color.lightBlue)
                    .opacity(20)
                    .cornerRadius(20)
                    .padding(.horizontal)

                UIButton2()
                    .listRowSeparator(.hidden)
                    .background(Color.lightBlue)
                    .cornerRadius(20)
                    .padding(.horizontal)
                
                
                Image("Code")
                    .padding(.top, 25)
                    .scaleEffect(0.8)
                    

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
