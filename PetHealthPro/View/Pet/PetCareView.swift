//
//  PetCareView.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import SwiftUI

struct PetCareView: View {
    let pet: Pet
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Dietary Information
                GroupBox(label: Label("Diet", systemImage: "cup.and.saucer")) {
                    VStack(alignment: .leading, spacing: 12) {
                        InfoRow(title: "Food Type", value: pet.dietaryInfo.foodType)
                        InfoRow(title: "Brand", value: pet.dietaryInfo.brand)
                        InfoRow(title: "Amount", value: pet.dietaryInfo.amount)
                        InfoRow(title: "Frequency", value: pet.dietaryInfo.frequency)
                        if let restrictions = pet.dietaryInfo.restrictions {
                            InfoRow(title: "Restrictions", value: restrictions)
                        }
                    }
                    .padding(.top, 8)
                }
                
                // Emergency Contacts
                GroupBox(label: Label("Emergency Contacts", systemImage: "phone.circle")) {
                    if pet.emergencyContacts.isEmpty {
                        Text("No emergency contacts added")
                            .foregroundColor(.secondary)
                            .padding(.top, 8)
                    } else {
                        VStack(spacing: 12) {
                            ForEach(pet.emergencyContacts) { contact in
                                EmergencyContactRow(contact: contact)
                            }
                        }
                        .padding(.top, 8)
                    }
                }
            }
            .padding()
        }
    }
}
