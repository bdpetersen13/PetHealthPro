//
//  PetRecordsView.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import SwiftUI
import Charts

struct PetRecordsView: View {
    let pet: Pet
    @State private var showingAddVisit = false
    @State private var showingDocumentUpload = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Health Overview Section
                GroupBox(label: Label("Health Overview", systemImage: "heart.text.square")) {
                    VStack(alignment: .leading, spacing: 16) {
                        VStack(spacing: 12) {
                            MetricCard(
                                title: "Overall Health",
                                value: "98%",
                                description: "Based on checkups",
                                status: "Good",
                                color: .green
                            )
                            
                            MetricCard(
                                title: "Vaccinations",
                                value: "1/2",
                                description: "Almost fully vaccinated",
                                status: "Overdue Vaccine",
                                color: .red
                            )
                            
                            MetricCard(
                                title: "Next Checkup",
                                value: "15 Days",
                                description: "Annual exam",
                                status: "Scheduled",
                                color: .purple
                            )
                        }
                    }
                    .padding()
                }
                
                // Medical History Section
                GroupBox(label: Label("Medical History", systemImage: "clipboard")) {
                    VStack(alignment: .leading, spacing: 16) {
                        VStack(spacing: 12) {
                            if !pet.medicalConditions.isEmpty {
                                ForEach(pet.medicalConditions) { condition in
                                    MedicalHistoryCard(condition: condition)
                                }
                            }
                            
                            if !pet.checkupRecords.isEmpty {
                                ForEach(pet.checkupRecords) { record in
                                    CheckupRecordCard(record: record)
                                }
                            }
                        }
                    }
                    .padding()
                }
                
                // Vet Visits Timeline
                GroupBox {
                    GroupBoxHeader(
                        title: "Veterinary Visits",
                        buttonTitle: "Add",
                        action: { showingAddVisit = true }
                    )
                    
                    if pet.vetVisits.isEmpty {
                        Text("No vet visits recorded")
                            .foregroundColor(.secondary)
                            .padding(.top, 8)
                    } else {
                        VStack(spacing: 20) {
                            ForEach(pet.vetVisits) { visit in
                                VetVisitRow(visit: visit)
                            }
                        }
                        .padding(.top, 8)
                    }
                }
                
                // Weight Chart
                GroupBox(label: Label("Weight History", systemImage: "chart.line.uptrend.xyaxis")) {
                    let weightData = [
                        WeightEntry(date: Calendar.current.date(byAdding: .month, value: -5, to: Date())!, weight: 64.0),
                        WeightEntry(date: Calendar.current.date(byAdding: .month, value: -4, to: Date())!, weight: 64.5),
                        WeightEntry(date: Calendar.current.date(byAdding: .month, value: -3, to: Date())!, weight: 65.0),
                        WeightEntry(date: Calendar.current.date(byAdding: .month, value: -2, to: Date())!, weight: 65.2),
                        WeightEntry(date: Calendar.current.date(byAdding: .month, value: -1, to: Date())!, weight: 65.0),
                        WeightEntry(date: Date(), weight: pet.weight)
                    ]
                    
                    Chart(weightData) { entry in
                        LineMark(
                            x: .value("Date", entry.date),
                            y: .value("Weight", entry.weight)
                        )
                        .foregroundStyle(Color.blue)
                        .symbol(Circle().strokeBorder(lineWidth: 2))
                    }
                    .frame(height: 200)
                    .padding(.top, 8)
                }
                
                // Documents and Files Section
                GroupBox {
                    GroupBoxHeader(title: "Documents & Files", buttonTitle: "Add") {
                        //TODO: 
                    }
                    VStack(alignment: .leading, spacing: 16) {
                        ForEach(mockDocuments, id: \.title) { doc in
                            DocumentCard(document: doc)
                        }
                    }
                    .padding()
                }
            }
            .padding()
        }
        .sheet(isPresented: $showingDocumentUpload) {
            DocumentUploadSheet()
        }
    }
}
