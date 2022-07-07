//
//  Display4View.swift
//  GT Prep App
//
//  Created by Nigel C Paver on 7/7/22.
//

import SwiftUI

struct Display4View: View {
    
    @ObservedObject var simSeqVM: SimSeqVM
    
    var body: some View {
        VStack {
            Text(simSeqVM.currentSequence.qText)    //Title
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 30)
            HStack {                                    // Questions
                Image (simSeqVM.currentSequence.oneTest.question.prefix+simSeqVM.currentSequence.oneTest.question.seq[0])
                    .resizable()
                    .scaledToFit()
                    .padding(10)
                Image (simSeqVM.currentSequence.oneTest.question.prefix+simSeqVM.currentSequence.oneTest.question.seq[1])
                    .resizable()
                    .scaledToFit()
                    .padding(10)
                Image (simSeqVM.currentSequence.oneTest.question.prefix+simSeqVM.currentSequence.oneTest.question.seq[2])
                    .resizable()
                    .scaledToFit()
                    .padding(10)
                Image (simSeqVM.currentSequence.oneTest.question.prefix+simSeqVM.currentSequence.oneTest.question.seq[3])
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
        }
       
    }
}


struct Display4View_Previews: PreviewProvider {
    static var previews: some View {
        Display4View(simSeqVM: SimSeqVM())
    }
}
