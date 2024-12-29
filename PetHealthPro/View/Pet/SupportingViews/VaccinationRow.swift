//
//  VaccinationRow.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import SwiftUI

struct VaccinationRow: View {
    let vaccination: Vaccination
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text(vaccination.name)
                        .font(.headline)
                    
                    // Status badge
                    HStack {
                        let isOverdue = vaccination.nextDue < Date()
                        Text(isOverdue ? "Overdue" : "Up to date")
                            .font(.caption)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(isOverdue ? Color.red.opacity(0.1) : Color.green.opacity(0.1))
                            .foregroundColor(isOverdue ? .red : .green)
                            .cornerRadius(4)
                    }
                }
                Spacer()
                VStack(alignment: .trailing, spacing: 4) {
                    Text("Next Due:")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text(vaccination.nextDue.formatted(date: .numeric, time: .omitted))
                        .font(.subheadline)
                        .foregroundColor(.blue)
                }
            }
            
            Divider()
            
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Given: \(vaccination.date.formatted(date: .numeric, time: .omitted))")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text("Provider: \(vaccination.provider)")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                Button("Edit") {
                    // Edit action
                }
                .font(.caption)
                .foregroundColor(.blue)
            }
            
            if let notes = vaccination.notes {
                Text(notes)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .padding(.top, 4)
            }
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        )
    }
}
