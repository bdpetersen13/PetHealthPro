//
//  PetHealthViewModel.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import SwiftUI

class PetHealthViewModel: ObservableObject {
    @Published var pets: [Pet] = []
    @Published var selectedPet: Pet?
    
    init() {
        // Load sample data
        loadSampleData()
    }
    
    private func loadSampleData() {
        // Sample data initialization
        let samplePet = Pet(
            id: UUID(),
            name: "Luna",
            breed: "Golden Retriever",
            age: 3,
            weight: 65.0,
            gender: "Female",
            photo: "luna_photo",
            microchipNumber: "985112345678903",
            birthdate: Calendar.current.date(from: DateComponents(year: 2021, month: 3, day: 15))!,
            allergies: ["Chicken", "Pollen"],
            medicalConditions: [
                MedicalCondition(
                    name: "Hip Dysplasia",
                    severity: "Mild",
                    status: "Ongoing",
                    dateIdentified: Calendar.current.date(from: DateComponents(year: 2023, month: 12, day: 1))!
                )
            ],
            checkupRecords: [
                CheckupRecord(
                    date: Calendar.current.date(from: DateComponents(year: 2024, month: 1, day: 5))!,
                    provider: "Dr. Smith",
                    findings: "Overall healthy with slight tartar buildup",
                    followUp: "Schedule dental cleaning in 3 months",
                    status: "Completed"
                )
            ],
            vaccinations: [
                Vaccination(
                    id: UUID(),
                    name: "Rabies",
                    date: Calendar.current.date(from: DateComponents(year: 2024, month: 1, day: 15))!,
                    nextDue: Calendar.current.date(from: DateComponents(year: 2025, month: 1, day: 15))!,
                    provider: "Dr. Smith",
                    notes: "No adverse reactions"
                ),
                Vaccination(
                    id: UUID(),
                    name: "DHPP",
                    date: Calendar.current.date(from: DateComponents(year: 2023, month: 12, day: 1))!,
                    nextDue: Calendar.current.date(from: DateComponents(year: 2024, month: 12, day: 1))!,
                    provider: "Dr. Wilson",
                    notes: "Mild lethargy for 24h"
                )
            ],
            medications: [],
            vetVisits: [],
            dietaryInfo: DietaryInfo(
                foodType: "Dry kibble",
                brand: "Royal Canin",
                amount: "3 cups daily",
                frequency: "2 times per day",
                restrictions: "No chicken products"
            ),
            emergencyContacts: []
        )
        pets.append(samplePet)
    }
}
