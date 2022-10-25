//
//  SearchView.swift
//  College Search Notebook
//
//  Created by Anthony Tast on 9/11/22.
//

import SwiftUI

struct SearchView: View {
    
    @State var colleges = loadCSV(from: "data-detailed")
    @State private var searchText = ""
    @State var myList = false
    
    var body: some View {
        NavigationView{
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
            .navigationTitle("Search Colleges")
        }
        .searchable(text: $searchText)
        .onChange(of: searchText) { searchText in
            if !searchText.isEmpty {
                colleges = loadCSV(from: "data-detailed").filter { $0.name.contains(searchText) }
            } else {
                colleges = loadCSV(from: "data-detailed")
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

