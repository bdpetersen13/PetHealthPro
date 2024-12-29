//
//  Vaccination.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import Foundation

struct Vaccination: Identifiable {
    let id: UUID
    var name: String
    var date: Date
    var nextDue: Date
    var provider: String
    var notes: String?
}
