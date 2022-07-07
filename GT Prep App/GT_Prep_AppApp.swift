//
//  GT_Prep_AppApp.swift
//  GT Prep App
//
//  Created by Nigel C Paver on 7/6/22.
//

import SwiftUI

@main
struct GT_Prep_AppApp: App {
    var body: some Scene {
        WindowGroup {
            QuestionView(gtManagerVM: GTManagerVM())
        }
    }
}
