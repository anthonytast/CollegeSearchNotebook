//
//  ContentView.swift
//  College Search Notebook
//
//  Created by Anthony Tast on 9/11/22.
//

import SwiftUI

struct CollegeSearchTabView: View {
    var body: some View {
        TabView {
            MyListView()
                .tabItem {
                    Image(systemName: "note.text")
                    Text("My List")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Account")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CollegeSearchTabView()
    }
}
