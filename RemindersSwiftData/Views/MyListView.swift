//
//  MyListView.swift
//  RemindersSwiftData
//
//  Created by Evgeniy Borovoy on 12/21/24.
//

import SwiftUI

struct MyListView: View {
    let myLists = ["Groceries", "Work", "Hobby"]
    @State var isPresented = false
    
    var body: some View {
        List {
            Text("My Lists")
                .font(.title)
                .bold()
            
            ForEach(myLists, id: \.self) { list in
                HStack {
                    Image(systemName: "line.3.horizontal.circle.fill")
                        .font(.system(size: 32))
                    Text(list)
                        .font(.title3)
                        .bold()
                }
            }
            
            Button {
                isPresented = true
            } label: {
                Text("Add List")
                    .foregroundStyle(.blue)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .sheet(isPresented: $isPresented) {
            NavigationStack {
                AddMyListView()
            }
        }
    }
}

#Preview {
    NavigationStack {
        MyListView()
    }
}
