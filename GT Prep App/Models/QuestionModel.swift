//
//  QuestionModel.swift
//  GT Prep App
//
//  Created by Nigel C Paver on 7/7/22.
//

import Foundation
import SwiftUI

struct seqTest {
    var currentQIndex: Int
    var qText: String                    //Question text to print on the screen
    var oneTest: SingleTest             // One test

    //var testComplete: Bool = false
    //var testResultsStatus: Bool = false
}

struct SingleTest{
    var question: Question
    var answer: String
    var ansOptions: Answers
}

struct Question {
    var prefix: String
    var seq : [String] = ["","","",""]
}

struct Answers {
    var prefix: String
    var ans : [String] = ["","","",""]
}
