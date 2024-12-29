//
//  DocumentUploadSheet.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/29/24.
//

import SwiftUI

struct DocumentUploadSheet: View {
    @Environment(\.dismiss) private var dismiss
    @State private var documentTitle = ""
    @State private var documentType = "lab-result"
    @State private var documentDate = Date()
    
    var body: some View {
        NavigationView {
            Form {
                Section("Document Information") {
                    TextField("Document Title", text: $documentTitle)
                    
                    Picker("Document Type", selection: $documentType) {
                        Text("Lab Results").tag("lab-result")
                        Text("X-Ray/Imaging").tag("xray")
                        Text("Vaccination Record").tag("vaccination")
                        Text("Prescription").tag("prescription")
                        Text("Other").tag("other")
                    }
                    
                    DatePicker("Date", selection: $documentDate, displayedComponents: .date)
                }
                
                Section {
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "doc.badge.plus")
                            Text("Select Document")
                        }
                    }
                }
                
                Section {
                    Text("Supported formats: PDF, JPG, PNG, DOC")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text("Maximum file size: 10MB")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            .navigationTitle("Upload Document")
            .navigationBarItems(
                leading: Button("Cancel") { dismiss() },
                trailing: Button("Upload") { dismiss() }
                    .disabled(documentTitle.isEmpty)
            )
        }
    }
}
