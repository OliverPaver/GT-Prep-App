//
//  TopLevelMenuView.swift
//  GT Prep App
//
//  Created by Nigel C Paver on 7/7/22.
//

import SwiftUI

struct TopLevelMenuView: View {
    
    @ObservedObject var simSeqVM: SimSeqVM
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        /* NavigationView {
            List {
                NavigationLink {
                    Display4View(simSeqVM: simSeqVM)
                } : label {
                    Text("Questions")
                }
                Text("option 2")
            }*/
        }
}


struct TopLevelMenuView_Previews: PreviewProvider {
    static var previews: some View {
        TopLevelMenuView(simSeqVM: SimSeqVM())
    }
}
