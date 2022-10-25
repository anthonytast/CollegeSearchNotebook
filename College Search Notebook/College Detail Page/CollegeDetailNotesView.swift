//
//  CollegeDetailNotesView.swift
//  College Search Notebook
//
//  Created by Anthony Tast on 10/9/22.
//

import SwiftUI

struct CollegeDetailNotesView: View {
    
    @State var textEditorMajors = "Majors:"
    @State var textEditorAcademics = "Academics:"
    @State var textEditorCampusLocation = "Campus/Location:"
    @State var textEditorDorms = "Dorms:"
    @State var textEditorAthletics = "Athletics:"
    @State var textEditorOther = "Other:"
    
    var account = AccountView()
    
    @State var noteSuggestions = false
    @State var schoolType = false
    
    var body: some View {
//        Form {
            Section(header: Text("Personal Notes")) {
                
                TextEditor(text: $textEditorMajors)
                
                TextEditor(text: $textEditorAcademics)
                
                TextEditor(text: $textEditorCampusLocation)
                
                TextEditor(text: $textEditorDorms)
                
                TextEditor(text: $textEditorAthletics)
                
                TextEditor(text: $textEditorOther)
            }
        }
}

struct CollegeDetailNotesView_Previews: PreviewProvider {
    static var previews: some View {
        CollegeDetailNotesView()
    }
}
