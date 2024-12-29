//
//  WeightEntry.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import Foundation

struct WeightEntry: Identifiable {
    let id = UUID()
    let date: Date
    let weight: Double
}
