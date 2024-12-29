//
//  AddPetButton.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import SwiftUI

struct AddPetButton: View {
    @Binding var showingAddPet: Bool
    
    var body: some View {
        Button(action: { showingAddPet = true }) {
            VStack(spacing: 12) {
                ZStack {
                    Circle()
                        .frame(width: 56, height: 56)
                        .foregroundStyle(Color.blue.quaternary)
                    Image(systemName: "plus")
                        .font(.system(size: 32))
                        .foregroundStyle(.blue)
                        .imageScale(.small)
                }
                Text("Add New Pet")
                    .font(.headline)
                    .foregroundStyle(.black)
                Text("Track your pet's health journey")
                    .font(.caption)
                    .foregroundStyle(.blue)
            }
            .foregroundColor(.blue)
            .frame(maxWidth: .infinity, minHeight: 180)
            .background(Color(.systemBackground))
            .cornerRadius(12)
            .overlay (
                RoundedRectangle(cornerRadius: 12)
                    .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                    .foregroundStyle(.blue)
            )
            .shadow(radius: 4)
        }
    }
}
