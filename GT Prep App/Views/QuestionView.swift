//
//  QuestionView.swift
//  GT Prep App
//
//  Created by Nigel C Paver on 7/6/22.
//

import SwiftUI

struct QuestionView: View {
    
    @ObservedObject var gtManagerVM: GTManagerVM
    
    var body: some View {
     
        VStack {
            
/*             HStack {                                                         // For Debug
                Text(gtManagerVM.currentSequence.oneTest.question.seq[0])
                Text(gtManagerVM.currentSequence.oneTest.question.seq[1])
                Text(gtManagerVM.currentSequence.oneTest.question.seq[2])
                Text(gtManagerVM.currentSequence.oneTest.question.seq[3])
            } */
            
            Text(gtManagerVM.currentSequence.qText)    //Title
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 30)
            HStack {                                    // Questions
                Image (gtManagerVM.currentSequence.oneTest.question.prefix+gtManagerVM.currentSequence.oneTest.question.seq[0])
                    .resizable()
                    .scaledToFit()
                    .padding(10)
                Image (gtManagerVM.currentSequence.oneTest.question.prefix+gtManagerVM.currentSequence.oneTest.question.seq[1])
                    .resizable()
                    .scaledToFit()
                    .padding(10)
                Image (gtManagerVM.currentSequence.oneTest.question.prefix+gtManagerVM.currentSequence.oneTest.question.seq[2])
                    .resizable()
                    .scaledToFit()
                    .padding(10)
                Image (gtManagerVM.currentSequence.oneTest.question.prefix+gtManagerVM.currentSequence.oneTest.question.seq[3])
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .padding(.horizontal, 30)
            .padding(.bottom, 40)
            
            Text("Choose from")    //Title
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 30)
           
            HStack {                                    //Answers
            Image (gtManagerVM.currentSequence.oneTest.ansOptions.prefix+gtManagerVM.currentSequence.oneTest.ansOptions.ans[0])
                .resizable()
                .scaledToFit()
                .padding(20)
                .onTapGesture {
                    gtManagerVM.iscorrect(sAnswer: gtManagerVM.currentSequence.oneTest.ansOptions.ans[0],pos: 0)
                }
            Image (gtManagerVM.currentSequence.oneTest.ansOptions.prefix+gtManagerVM.currentSequence.oneTest.ansOptions.ans[1])
                .resizable()
                .scaledToFit()
                .padding(20)
                .onTapGesture {
                    gtManagerVM.iscorrect(sAnswer: gtManagerVM.currentSequence.oneTest.ansOptions.ans[1], pos: 1)
                }
            Image (gtManagerVM.currentSequence.oneTest.ansOptions.prefix+gtManagerVM.currentSequence.oneTest.ansOptions.ans[2])
                .resizable()
                .scaledToFit()
                .padding(20)
                .onTapGesture {
                    gtManagerVM.iscorrect(sAnswer: gtManagerVM.currentSequence.oneTest.ansOptions.ans[2], pos: 2)
                }
            Image (gtManagerVM.currentSequence.oneTest.ansOptions.prefix+gtManagerVM.currentSequence.oneTest.ansOptions.ans[3])
                .resizable()
                .scaledToFit()
                .padding(20)
                .onTapGesture {
                    gtManagerVM.iscorrect(sAnswer: gtManagerVM.currentSequence.oneTest.ansOptions.ans[3],pos: 3)
                }
        }
        .padding(.horizontal, 50)
            
    }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(gtManagerVM: GTManagerVM())
    }
}
