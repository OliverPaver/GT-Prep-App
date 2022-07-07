//
//  GTAppManagerVM.swift
//  FirstApp
//
//  Created by Oliver Paver on 7/6/22.
//

import Foundation
import SwiftUI

class GTManagerVM: ObservableObject {
    
    static var currentQIndex = 0
    static var currentQtext = 0
    
    static func createSequence(i: Int) -> seqTest {
        return seqTest(currentQIndex: i,
                       qText: qTextData[currentQtext],
                       oneTest: testData[i]
                       )
    }
    
    @Published var currentSequence = GTManagerVM.createSequence(i: GTManagerVM.currentQIndex)
    
    func iscorrect(sAnswer: String, pos: Int) {
       // currentSequence.oneTest.ansOptions.ans[3] = sAnswer
        
        if (currentSequence.oneTest.answer == sAnswer) {
            currentSequence.oneTest.ansOptions.ans[pos] = "CHKY"
            currentSequence.oneTest.question.seq[3] = sAnswer
        }
        else {
            currentSequence.oneTest.ansOptions.ans[pos] = "CHKN"
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            if (GTManagerVM.currentQIndex < 3) {
                GTManagerVM.currentQIndex += 1
                self.currentSequence = GTManagerVM.createSequence(i: GTManagerVM.currentQIndex)
            }
            else {
                GTManagerVM.currentQIndex = 0
                self.currentSequence = GTManagerVM.createSequence(i: GTManagerVM.currentQIndex)
            }
    }
}
}

extension GTManagerVM {
    static var testData: [SingleTest] {
    [
        SingleTest(question: Question(prefix: "CO_", seq: ["1","2","3","QM"]),
                   answer: "4",
                   ansOptions: Answers(prefix: "BC_",ans: ["5","4","6","7"])),
        
        SingleTest(question: Question(prefix: "CO_", seq: ["2","3","4","QM"]),
                   answer: "5",
                   ansOptions: Answers(prefix: "BC_",ans: ["6","4","5","7"])),
        
        SingleTest(question: Question(prefix: "CO_", seq: ["3","4","5","QM"]),
                   answer: "6",
                   ansOptions: Answers(prefix: "BC_",ans: ["5","8","6","7"])),
        
        SingleTest(question: Question(prefix: "CO_", seq: ["4","5","6","QM"]),
                   answer: "7",
                   ansOptions: Answers(prefix: "BC_",ans: ["3","2","5","7"]))
        
    ]
        
    }
    static var qTextData: [String] {
        ["What is the missing number?"]
    }

    
    }
    /*  func verifyAnswer(selectedAnswer: SeqAnswerOption) {
         for index in model.testModel.seqAnswerList.indices {
             model.testModel.seqAnswerList[index].isMatched = false
             model.testModel.seqAnswerList[index].isSelected = false
         }
         
         if let index = model.testModel.seqAnswerList.firstIndex(where: {$0.option == selectedAnswer.option}) {
             if selectedAnswer.option == model.testModel.answer {
                 model.testModel.seqAnswerList[index].isMatched = true
                 model.testModel.seqAnswerList[index].isSelected = true
                 
                 DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                     if (GTManagerVM.currentIndex < 3) {
                         GTManagerVM.currentIndex += 1
                         self.model = GTManagerVM.createTestModel(i: GTManagerVM.currentIndex)
                     }
                     else {
                         GTManagerVM.currentIndex = 0
                         self.model = GTManagerVM.createTestModel(i: GTManagerVM.currentIndex)
                     }
                 }
             }
             else {
                 model.testModel.seqAnswerList[index].isMatched = true
                 model.testModel.seqAnswerList[index].isSelected = true
             }
         }
     }

 */

    
/* extension GTManagerVM {
    static var testData: [seqTestModel] {
    [
        seqTestModel(seq: SeqOption(seq1: "1", seq2: "2", seq3: "3", seq4: "QM", seqPrefix: "CO_"), answer: "4", seqAnswerList: [SeqAnswerOption(option: "4", answerPrefix: "BC_"), SeqAnswerOption(option: "5", answerPrefix: "BC_"), SeqAnswerOption(option: "9", answerPrefix: "BC_"), SeqAnswerOption(option: "7", answerPrefix: "BC_")]),
        
        seqTestModel(seq: SeqOption(seq1: "3", seq2: "4", seq3: "5", seq4: "QM", seqPrefix: "CO_"), answer: "6", seqAnswerList: [SeqAnswerOption(option: "13", answerPrefix: "BC_"), SeqAnswerOption(option: "12", answerPrefix: "BC_"), SeqAnswerOption(option: "6", answerPrefix: "BC_"), SeqAnswerOption(option: "16", answerPrefix: "BC_")]),
        
        seqTestModel(seq: SeqOption(seq1: "4", seq2: "5", seq3: "6", seq4: "QM", seqPrefix: "CO_"), answer: "7", seqAnswerList: [SeqAnswerOption(option: "9", answerPrefix: "BC_"), SeqAnswerOption(option: "7", answerPrefix: "BC_"), SeqAnswerOption(option: "8", answerPrefix: "BC_"), SeqAnswerOption(option: "7", answerPrefix: "BC_")]),
        
        seqTestModel(seq: SeqOption(seq1: "5", seq2: "6", seq3: "7", seq4: "QM", seqPrefix: "CO_"), answer: "8", seqAnswerList: [SeqAnswerOption(option: "5", answerPrefix: "BC_"), SeqAnswerOption(option: "12", answerPrefix: "BC_"), SeqAnswerOption(option: "8", answerPrefix: "BC_"), SeqAnswerOption(option: "16", answerPrefix: "BC_")])
    ]
    }*/

