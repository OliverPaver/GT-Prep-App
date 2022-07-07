//
//  Choose4View.swift
//  GT Prep App
//
//  Created by Nigel C Paver on 7/7/22.
//

import SwiftUI


struct Choose4View: View {
    
    @ObservedObject var simSeqVM: SimSeqVM
    
    var body: some View {
        VStack {
            Text("Choose from")    //Title
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 30)
            
            HStack {                                    //Answers
                Image (simSeqVM.currentSequence.oneTest.ansOptions.prefix+simSeqVM.currentSequence.oneTest.ansOptions.ans[0])
                    .resizable()
                    .scaledToFit()
                    .padding(20)
                    .onTapGesture {
                        simSeqVM.iscorrect(sAnswer: simSeqVM.currentSequence.oneTest.ansOptions.ans[0],pos: 0)
                    }
                Image (simSeqVM.currentSequence.oneTest.ansOptions.prefix+simSeqVM.currentSequence.oneTest.ansOptions.ans[1])
                    .resizable()
                    .scaledToFit()
                    .padding(20)
                    .onTapGesture {
                        simSeqVM.iscorrect(sAnswer: simSeqVM.currentSequence.oneTest.ansOptions.ans[1], pos: 1)
                    }
                Image (simSeqVM.currentSequence.oneTest.ansOptions.prefix+simSeqVM.currentSequence.oneTest.ansOptions.ans[2])
                    .resizable()
                    .scaledToFit()
                    .padding(20)
                    .onTapGesture {
                        simSeqVM.iscorrect(sAnswer: simSeqVM.currentSequence.oneTest.ansOptions.ans[2], pos: 2)
                    }
                Image (simSeqVM.currentSequence.oneTest.ansOptions.prefix+simSeqVM.currentSequence.oneTest.ansOptions.ans[3])
                    .resizable()
                    .scaledToFit()
                    .padding(20)
                    .onTapGesture {
                        simSeqVM.iscorrect(sAnswer: simSeqVM.currentSequence.oneTest.ansOptions.ans[3],pos: 3)
                    }
            }
        }
    }
}

struct Choose4View_Previews: PreviewProvider {
    static var previews: some View {
        Choose4View(simSeqVM: SimSeqVM())
    }
}
