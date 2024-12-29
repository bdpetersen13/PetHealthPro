//
//  EventRow.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/29/24.
//

import SwiftUI

struct EventRow: View {
    let event: PetEvent
    
    var body: some View {
        HStack {
            Rectangle()
                .fill(event.type.color)
                .frame(width: 4)
                .cornerRadius(2)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("\(event.pet) - \(event.title)")
                    .font(.subheadline)
                    .fontWeight(.medium)
                Text("\(event.date.formatted(date: .abbreviated, time: .omitted)) at \(event.time)")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Button("Details") {
                // TODO: Show event details
            }
            .font(.caption)
            .foregroundColor(.blue)
        }
        .padding(.vertical, 8)
    }
}
