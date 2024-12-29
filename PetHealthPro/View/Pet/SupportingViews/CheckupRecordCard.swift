//
//  CheckupRecordCard.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/29/24.
//

import SwiftUI

struct CheckupRecordCard: View {
    let record: CheckupRecord
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("Annual Checkup")
                    .font(.subheadline)
                    .fontWeight(.medium)
                Spacer()
                Text(record.date.formatted(date: .numeric, time: .omitted))
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Text(record.provider)
                .font(.caption)
                .foregroundColor(.secondary)
            
            Text(record.findings)
                .font(.subheadline)
                .foregroundColor(.primary)
            
            if let followUp = record.followUp {
                Text(followUp)
                    .font(.caption)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(Color.blue.opacity(0.1))
                    .foregroundColor(.blue)
                    .cornerRadius(4)
            }
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
