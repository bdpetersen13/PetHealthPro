//
//  MedicalCondition.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/29/24.
//

import Foundation

struct MedicalCondition: Identifiable, Hashable {
    let id = UUID()
    var name: String
    var severity: String
    var status: String
    var dateIdentified: Date
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: MedicalCondition, rhs: MedicalCondition) -> Bool {
        lhs.id == rhs.id
    }
}
