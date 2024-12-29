//
//  PetEvent.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/29/24.
//

import Foundation
import SwiftUI

struct PetEvent: Identifiable {
    let id = UUID()
    var pet: String
    var type: EventType
    var title: String
    var date: Date
    var time: String
    var notes: String
    var reminder: Int
}

enum EventType: String, CaseIterable {
    case vet = "Vet Visit"
    case grooming = "Grooming"
    case medication = "Medication"
    case vaccination = "Vaccination"
    case other = "Other"
    
    var color: Color {
        switch self {
        case .vet: return .purple
        case .grooming: return .green
        case .medication: return .blue
        case .vaccination: return .yellow
        case .other: return .pink
        }
    }
}
