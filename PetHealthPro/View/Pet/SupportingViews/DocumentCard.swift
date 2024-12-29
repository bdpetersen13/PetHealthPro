//
//  DocumentCard.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/29/24.
//

import SwiftUI

struct DocumentCard: View {
    let document: MockDocument
    
    var body: some View {
        VStack(spacing: 8) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text(document.title)
                        .font(.subheadline)
                        .fontWeight(.medium)
                    Text(document.date)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Text(document.type)
                    .font(.caption)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(Color(.systemGray5))
                    .cornerRadius(4)
            }
            
            HStack {
                Text(document.size)
                    .font(.caption)
                    .foregroundColor(.secondary)
                Spacer()
                Button("View") { }
                    .font(.subheadline)
                    .foregroundColor(.blue)
            }
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(8)
        .shadow(color: .black.opacity(0.05), radius: 2, x: 0, y: 1)
    }
}
