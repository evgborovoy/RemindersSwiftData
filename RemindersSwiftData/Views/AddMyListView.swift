//
//  AddMyListView.swift
//  RemindersSwiftData
//
//  Created by Evgeniy Borovoy on 12/21/24.
//

import SwiftUI

struct AddMyListView: View {
    @State private var listTitle = ""
    @State private var color: Color = .purple
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Image(systemName: "line.3.horizontal.circle.fill")
                .font(.system(size: 100))
                .foregroundStyle(color)
            
            TextField("Title", text: $listTitle)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal, 40)
            
            ColorPickerView(selectedColor: $color)
        }
        .navigationTitle("New List")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .cancellationAction) {
                Button("Cancel") {
                    dismiss()
                }
            }
            
            ToolbarItem(placement: .confirmationAction) {
                Button("Add") {
                    // TODO: Save action
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        AddMyListView()
    }
}
