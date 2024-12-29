//
//  CheckupRecord.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/29/24.
//

import Foundation

struct CheckupRecord: Identifiable, Hashable {
    let id = UUID()
    var date: Date
    var provider: String
    var findings: String
    var followUp: String?
    var status: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: CheckupRecord, rhs: CheckupRecord) -> Bool {
        lhs.id == rhs.id
    }
}

