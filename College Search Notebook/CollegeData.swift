//
//  CollegeData.swift
//  College Search Notebook
//
//  Created by Anthony Tast on 9/26/22.
//

import Foundation

struct collegeData: Identifiable {
    
    let trueid = UUID()
    var id: String
    
    var name: String
    var city: String
    var state: String
    var campusSize: String
    var website: String
    var fullTution: String
    var avgSAT: String
    var acceptanceRate: String
    
// part of csv tutorial
// will need to add institution. from csv
   init(raw: [String]) {
       name = raw[0]
       city = raw[2]
       state = raw[1]
       campusSize = raw[4]
       website = raw[6]
       fullTution = raw[3]
       avgSAT = raw[5]
       acceptanceRate = raw[7]
       id = raw[8]
   }
}

final class DataBase {
    private let fav_key = "fav key"

    func save(colleges: Set<Int>) {
        let array = Array(colleges)
        UserDefaults.standard.set(array, forKey: fav_key)
    }

    func load() -> Set<Int> {
        let array = UserDefaults.standard.array(forKey: fav_key) as? [Int] ?? [Int]()
        return Set(array)
    }

}

    final class ViewModel: ObservableObject {
        @Published var colleges = [collegeData]()
        var showingFavs = false
        @Published var savedItems: Set<Int> = [1, 7]
        
        var filteredItems: [collegeData] {
           if showingFavs {
               return colleges.filter { savedItems.contains(Int($0.id)!) }
           } else {
                return colleges
            }
        }
        
        private var db = DataBase()
        
        init() {
            self.savedItems = db.load()
            self.colleges = [collegeData]()
        }
        
        func sortFavs() {
            showingFavs.toggle()
        }
        func contains(_ college: collegeData) -> Bool {
            savedItems.contains(Int(college.id)!)
        }
        
        func toggleFav(college: collegeData) {
            if contains(college) {
                savedItems.remove(Int(college.id)!)
            } else {
                savedItems.insert(Int(college.id)!)
            }
            db.save(colleges: savedItems)
            
        }
    }

//from tutorial https://www.youtube.com/watch?v=_lPU9SrBpRI



