//
//  EmergencyContactView.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import SwiftUI

struct EmergencyContactRow: View {
    let contact: EmergencyContact
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(contact.name)
                .font(.headline)
            Text(contact.phone)
                .font(.subheadline)
            Text(contact.address)
                .font(.caption)
                .foregroundColor(.secondary)
            Text("Available: \(contact.available)")
                .font(.caption)
                .foregroundColor(.blue)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(8)
    }
}
