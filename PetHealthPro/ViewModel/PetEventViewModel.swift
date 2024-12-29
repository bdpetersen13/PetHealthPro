//
//  PetEventViewModel.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/29/24.
//

import SwiftUI

// Sample Events
let sampleEvents = [
    PetEvent(
        pet: "Luna",
        type: .vet,
        title: "Vet Visit",
        date: Calendar.current.date(byAdding: .day, value: 4, to: Date())!,
        time: "2:30 PM",
        notes: "Annual checkup",
        reminder: 30
    ),
    PetEvent(
        pet: "Luna",
        type: .medication,
        title: "Heartworm Med",
        date: Calendar.current.date(byAdding: .day, value: 15, to: Date())!,
        time: "Morning",
        notes: "Monthly prevention",
        reminder: 30
    )
]
