//
//  ParseCSV.swift
//  College Search Notebook
//
//  Created by Anthony Tast on 10/22/22.
//

import Foundation

// from tutorial https://www.youtube.com/watch?v=Q2hGcqpnCro

func loadCSV(from csvName: String) -> [collegeData] {
    var csvToStruct = [collegeData]()
    
    guard let filepath = Bundle.main.path(forResource: csvName, ofType: "csv") else {
        return []
    }
    
    var data = ""
    do{
        data = try String(contentsOfFile: filepath)
    } catch {
        print(error)
        return []
    }
    
    var rows = data.components(separatedBy: "\n")
    rows.removeFirst()
    
    let columnCount = rows.first?.components(separatedBy: ",").count
    
    for row in rows{
        let csvColumns = row.components(separatedBy: ",")
        if csvColumns.count == columnCount {
            let collegeStruct = collegeData.init(raw: csvColumns)
            csvToStruct.append(collegeStruct)
        }
    }
    return csvToStruct
}
