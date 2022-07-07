//
//  SimSeq4QView.swift
//  GT Prep App
//
//  Created by Nigel C Paver on 7/7/22.
//

import SwiftUI

struct SimSeq4QView: View {
    
    @ObservedObject var simSeqVM: SimSeqVM
    
    var body: some View {
        VStack {
            Display4View(simSeqVM: simSeqVM)
                .padding(.horizontal, 30)
                .padding(.bottom, 40)
            Choose4View(simSeqVM: simSeqVM)
                .padding(.horizontal, 50)
            
        }
    }
}

struct SimSeq4QView_Previews: PreviewProvider {
    static var previews: some View {
        SimSeq4QView(simSeqVM: SimSeqVM())
    }
}
