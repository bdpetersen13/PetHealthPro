//
//  VetVisitRow.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import SwiftUI

struct VetVisitRow: View {
    let visit: VetVisit
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(visit.type)
                    .font(.headline)
                Spacer()
                Text(visit.date, style: .date)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Text("Provider: \(visit.provider)")
                .font(.subheadline)
            
            Text(visit.notes)
                .font(.caption)
                .foregroundColor(.secondary)
            
            if let followUp = visit.followUp {
                Text("Follow-up: \(followUp)")
                    .font(.caption)
                    .foregroundColor(.blue)
            }
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(8)
    }
}
