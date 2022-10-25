//
//  MyListView.swift
//  College Search Notebook
//
//  Created by Anthony Tast on 9/11/22.
//

import SwiftUI

struct MyListView: View {
    var colleges = loadCSV(from: "data-detailed")
    @State var myList: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(colleges) { college in
           
                    NavigationLink(destination:
                                    CollegeDetailView(college: college, myList: $myList)) {
                        Text(college.name)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .lineLimit(0)
                            .padding(10)
                    }
           
                }
            }
            .navigationTitle("My College List")
        }
    }
}

//struct MyListView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyListView()
//    }
//}

//func myListTrueColleges() {
//    if myList == true {
//        var filteredCollege = college
//    }
//}
