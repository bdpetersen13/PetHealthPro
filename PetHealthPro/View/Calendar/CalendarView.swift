//
//  CalendarView.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import SwiftUI

struct CalendarView: View {
    @State private var selectedDate = Date()
    @State private var showingAddEvent = false
    @State private var events: [PetEvent] = sampleEvents
    @State private var selectedEventType: EventType = .vet
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                // Calendar Header
                HStack {
                    VStack(alignment: .leading) {
                        Text("Calendar")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text("Manage your pets' schedules")
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                    
                    HStack(spacing: 8) {
                        Button(action: { showingAddEvent = true }) {
                            Label("Add Event", systemImage: "plus")
                                .padding(.horizontal, 12)
                                .padding(.vertical, 8)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        
                        Button(action: { selectedDate = Date() }) {
                            Label("Today", systemImage: "calendar")
                                .padding(.horizontal, 12)
                                .padding(.vertical, 8)
                                .background(Color(.systemGray6))
                                .cornerRadius(8)
                        }
                    }
                }
                .padding()
                
                // Calendar
                DatePicker(
                    "Select Date",
                    selection: $selectedDate,
                    displayedComponents: [.date]
                )
                .datePickerStyle(.graphical)
                .padding()
                
                // Event Legend
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(EventType.allCases, id: \.self) { type in
                            HStack(spacing: 6) {
                                Circle()
                                    .fill(type.color.opacity(0.2))
                                    .frame(width: 8, height: 8)
                                Text(type.rawValue)
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(Color(.systemGray6))
                            .cornerRadius(12)
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.vertical, 8)
                
                // Events List
                List {
                    Section(header: Text("Upcoming Events")) {
                        if events.isEmpty {
                            Text("No events scheduled")
                                .foregroundColor(.secondary)
                        } else {
                            ForEach(events) { event in
                                EventRow(event: event)
                            }
                        }
                    }
                }
            }
        }
        .sheet(isPresented: $showingAddEvent) {
            AddEventView(events: $events)
        }
    }
}
