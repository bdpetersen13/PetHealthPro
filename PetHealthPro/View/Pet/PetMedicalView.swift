//
//  PetMedicalView.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import SwiftUI

struct PetMedicalView: View {
    let pet: Pet
    @State private var showingAddVaccination = false
    @State private var showingAddMedication = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Vaccinations Section
                GroupBox {
                    GroupBoxHeader(
                        title: "Vaccinations",
                        buttonTitle: "Add",
                        action: { showingAddVaccination = true }
                    )
                    
                    VStack(spacing: 12) {
                        if pet.vaccinations.isEmpty {
                            Text("No vaccinations recorded")
                                .foregroundColor(.secondary)
                                .padding(.top, 8)
                        } else {
                            ForEach(pet.vaccinations) { vaccination in
                                VaccinationRow(vaccination: vaccination)
                            }
                        }
                    }
                    .padding(.top, 8)
                }
                
                // Medications Section
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
                }
            }
            .padding()
        }
        .sheet(isPresented: $showingAddVaccination) {
            AddVaccinationView()
        }
        .sheet(isPresented: $showingAddMedication) {
            AddMedicationView()
        }
    }
}
