//
//  CollegeData.swift
//  College Search Notebook
//
//  Created by Anthony Tast on 9/26/22.
//

import Foundation

struct collegeData: Identifiable {
    let id = UUID()
    
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
   }
}

//struct MockData {
//    static let college = [collegeData(name: "Hofstra University",
//                                     location: "Hempstead, NY",
//                                     campusSize: 6004,
//                                     website: URL(string: "hofstra.edu")!,
//                                     fullTution: 50265,
//                                     avgSAT: "1160-1340",
//                                       acceptanceRate: 68),
//
//                           collegeData(name: "CollegeName",
//                                             location: "Location",
//                                             campusSize: 9278,
//                                             website: URL(string: "apple.com")!,
//                                             fullTution: 40295,
//                                             avgSAT: "1300-1500",
//                                             acceptanceRate: 22)
//]}

