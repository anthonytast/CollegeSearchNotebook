//
//  CollegePageView.swift
//  College Search Notebook
//
//  Created by Anthony Tast on 9/26/22.
//

import SwiftUI

struct CollegeDetailView: View {
    
    var account = AccountView()
    var college: collegeData
    @State var selectedSchoolType = ""
    let schoolTypes = ["Reach School", "Match School", "Safety School"]
    @Binding var myList: Bool
    
    var body: some View {
            Form {
                Section (header: Text("Provided Information")) {
                    HStack{
                        Text("Location:")
                        Spacer()
                        Text("\(college.city + ", " + college.state)")
                    }
                    HStack{
                        Text("Campus Size:")
                        Spacer()
                        Text(college.campusSize + " students")
                    }
                    HStack{
                        Text("Website:")
                        Spacer()
                        Text(college.website)
                    }
                    HStack{
                        Text("Full Tuition:")
                        Spacer()
                        Text("$" + college.fullTution)
                    }
                    HStack{
                        Text("Average SAT:")
                        Spacer()
                        Text(college.avgSAT)
                    }
                    HStack{
                        Text("Acceptance Rate:")
                        Spacer()
                        Text(college.acceptanceRate + "%" )
                    }
                }
                
                Section(header: Text("Options")) {
                    Toggle("Add to My List ⭐️", isOn: $myList)
                    
                Picker("School Type", selection: $selectedSchoolType, content: {
                    ForEach(schoolTypes, id: \.self, content: { schoolTypes in
                        Text(schoolTypes)
                    })
                })
            }
                    //maybe add selection tool to remove section and add new section
                    //also name each selection based off beginning of texteditor title

// ^^picker code was copied from online
// can maybe find a better way to write it out
                CollegeDetailNotesView()
            }
            .navigationTitle(college.name)
        }
}

