//
//  Pet.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import Foundation

struct Pet: Identifiable {
    let id: UUID
    var name: String
    var breed: String
    var age: Int
    var weight: Double
    var gender: String
    var photo: String
    var microchipNumber: String
    var birthdate: Date
    var allergies: [String]
    var medicalConditions: [MedicalCondition]  
    var checkupRecords: [CheckupRecord]
    var vaccinations: [Vaccination]
    var medications: [Medication]
    var vetVisits: [VetVisit]
    var dietaryInfo: DietaryInfo
    var emergencyContacts: [EmergencyContact]
}
