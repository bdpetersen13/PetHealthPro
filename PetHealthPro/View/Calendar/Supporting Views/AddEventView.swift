//
//  AddEventView.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/29/24.
//

import SwiftUI

struct AddEventView: View {
    @Environment(\.dismiss) private var dismiss
    @Binding var events: [PetEvent]
    
    @State private var selectedPet = "Luna"
    @State private var eventType: EventType = .vet
    @State private var title = ""
    @State private var date = Date()
    @State private var time = "9:00 AM"
    @State private var notes = ""
    @State private var reminder = 30
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Event Details")) {
                    Picker("Pet", selection: $selectedPet) {
                        Text("Luna").tag("Luna")
                    }
                    
                    Picker("Event Type", selection: $eventType) {
                        ForEach(EventType.allCases, id: \.self) { type in
                            Text(type.rawValue).tag(type)
                        }
                    }
                    
                    TextField("Title", text: $title)
                }
                
                Section(header: Text("Date & Time")) {
                    DatePicker("Date", selection: $date, displayedComponents: .date)
                    TextField("Time", text: $time)
                }
                
                Section(header: Text("Additional Details")) {
                    TextEditor(text: $notes)
                        .frame(height: 100)
                    
                    Picker("Reminder", selection: $reminder) {
                        Text("15 minutes before").tag(15)
                        Text("30 minutes before").tag(30)
                        Text("1 hour before").tag(60)
                        Text("1 day before").tag(1440)
                    }
                }
            }
            .navigationTitle("Add Event")
            .navigationBarItems(
                leading: Button("Cancel") { dismiss() },
                trailing: Button("Add") {
                    let newEvent = PetEvent(
                        pet: selectedPet,
                        type: eventType,
                        title: title,
                        date: date,
                        time: time,
                        notes: notes,
                        reminder: reminder
                    )
                    events.append(newEvent)
                    dismiss()
                }
                .disabled(title.isEmpty)
            )
        }
    }
}
