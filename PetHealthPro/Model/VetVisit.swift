//
//  VetVisit.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import Foundation

struct VetVisit: Identifiable {
    let id: UUID
    let date: Date
    let type: String
    let provider: String
    var notes: String
    var followUp: String?
}
