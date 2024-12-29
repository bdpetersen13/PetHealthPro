//
//  PetOverviewView.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import SwiftUI

struct PetOverviewView: View {
    let pet: Pet
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Basic Information Card
                GroupBox(label: Label("Basic Information", systemImage: "info.circle")) {
                    VStack(alignment: .leading, spacing: 12) {
                        InfoRow(title: "Microchip", value: pet.microchipNumber)
                        InfoRow(title: "Birthdate", value: pet.birthdate.formatted(date: .long, time: .omitted))
                        InfoRow(title: "Weight", value: String(format: "%.1f lbs", pet.weight))
                    }
                    .padding(.top, 8)
                }
                
                // Allergies Card
                GroupBox(label: Label("Allergies", systemImage: "exclamationmark.triangle")) {
                    if pet.allergies.isEmpty {
                        Text("No known allergies")
                            .foregroundColor(.secondary)
                            .padding(.top, 8)
                    } else {
                        FlowLayout(spacing: 8) {
                            ForEach(pet.allergies, id: \.self) { allergy in
                                Text(allergy)
                                    .font(.caption)
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 6)
                                    .background(Color.red.opacity(0.1))
                                    .foregroundColor(.red)
                                    .cornerRadius(12)
                            }
                        }
                        .padding(.top, 8)
                    }
                }
                
                // Medical Conditions Card
                GroupBox(label: Label("Medical Conditions", systemImage: "heart.text.square")) {
                    if pet.medicalConditions.isEmpty {
                        Text("No medical conditions")
                            .foregroundColor(.secondary)
                            .padding(.top, 8)
                    } else {
                        FlowLayout(spacing: 8) {
                            ForEach(pet.medicalConditions) { condition in
                                VStack(alignment: .leading, spacing: 2) {
                                    Text(condition.name)
                                        .font(.caption)
                                        .fontWeight(.medium)
                                    Text(condition.severity)
                                        .font(.caption2)
                                        .foregroundColor(.secondary)
                                }
                                .padding(.horizontal, 12)
                                .padding(.vertical, 6)
                                .background(Color.yellow.opacity(0.1))
                                .foregroundColor(.orange)
                                .cornerRadius(12)
                            }
                        }
                        .padding(.top, 8)
                    }
                }            }
            .padding()
        }
    }
}
