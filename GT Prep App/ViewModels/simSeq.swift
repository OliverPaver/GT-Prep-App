//
//  SimSeq.swift
//  GT Prep App
//
//  Created by Nigel C Paver on 7/7/22.
//

import Foundation
import SwiftUI
import Combine

class SimSeqVM: ObservableObject {      // Simple Sequences
    
    static var currentQIndex = 0
    static var currentQtext = 0
    
    static func createSequence(i: Int) -> seqTest {
        return seqTest(currentQIndex: i,
                       qText: qTextData[currentQtext],
                       oneTest: testData[i]
                       )
    }
    
    @Published var currentSequence = SimSeqVM.createSequence(i: SimSeqVM.currentQIndex)
    
    func iscorrect(sAnswer: String, pos: Int) {
        // currentSequence.oneTest.ansOptions.ans[3] = sAnswer
        
        if (currentSequence.oneTest.answer == sAnswer) {
            currentSequence.oneTest.ansOptions.ans[pos] = "CHKY"   // Repalce number clicked with a check mark
            currentSequence.oneTest.question.seq[3] = sAnswer      // Update sequence with the correct answer
        }
        else {
            currentSequence.oneTest.ansOptions.ans[pos] = "CHKN"  // Repalce number clicked with a cross mark
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            if (SimSeqVM.currentQIndex < 3) {
                SimSeqVM.currentQIndex += 1
                self.currentSequence = SimSeqVM.createSequence(i: SimSeqVM.currentQIndex)
            }
            else {
                SimSeqVM.currentQIndex = 0
                self.currentSequence = SimSeqVM.createSequence(i: SimSeqVM.currentQIndex)
            }
        }
    }
}


extension SimSeqVM {
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
