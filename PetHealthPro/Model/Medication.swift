//
//  Medication.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import Foundation

struct Medication: Identifiable {
    let id: UUID
    var name: String
    var type: String
    var dosage: String
    var frequency: String
    var schedule: String
    var nextDue: Date
    var notes: String?
}
