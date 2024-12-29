//
//  DateCell.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/29/24.
//

import SwiftUI

struct DateCell: View {
    let date: Date
    let isSelected: Bool
    let isToday: Bool
    let events: [PetEvent]
    
    private let calendar = Calendar.current
    
    var body: some View {
        VStack(spacing: 4) {
            // Date number
            Text("\(calendar.component(.day, from: date))")
                .font(.subheadline)
                .fontWeight(isToday ? .bold : .regular)
                .foregroundColor(isSelected ? .white : (isToday ? .blue : .primary))
                .frame(width: 24, height: 24)
                .background(
                    Circle()
                        .fill(isSelected ? Color.blue : Color.clear)
                        .opacity(isSelected ? 1 : 0)
                )
            
            // Event indicators
            if !events.isEmpty {
                HStack(spacing: 4) {
                    ForEach(events.prefix(3)) { event in
                        Circle()
                            .fill(event.type.color)
                            .frame(width: 6, height: 6)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity)
        .aspectRatio(1, contentMode: .fill)
        .padding(.vertical, 4)
        .background(
            RoundedRectangle(cornerRadius: 8)
                .fill(isSelected ? Color.blue.opacity(0.1) : Color.clear)
        )
    }
}
