//
//  MedicalHistoryCard.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/29/24.
//

import SwiftUI

struct MedicalHistoryCard: View {
    let condition: MedicalCondition
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(condition.name)
                    .font(.subheadline)
                    .fontWeight(.medium)
                Text("(\(condition.severity))")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Text(condition.status)
                .font(.caption)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(Color.yellow.opacity(0.2))
                .foregroundColor(.orange)
                .cornerRadius(4)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.systemBackground))
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        )
    }
}
