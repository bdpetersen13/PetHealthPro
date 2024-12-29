//
//  EmergencyContact.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import Foundation

struct EmergencyContact: Identifiable {
    let id: UUID
    var name: String
    var phone: String
    var address: String
    var available: String
}
