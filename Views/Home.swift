//
//  Home.swift
//  RoboChef
//
//  Created by Alex Pallozzi on 5/19/23.
//

import SwiftUI

struct Home: View {
    
    @State var items : [String] = [
        "hi", "hello", "hello"
    ]
    
    var addButton: some View {
        Button("Add", action: {
            addItem()
        })
    }
    
    func delete(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        items.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func addItem() {
        
    }
    
    var body : some View {
        ZStack {
            NavigationView {
                List {
                    Section(
                        header:
                            HStack {
                                Text("Items")
                                Image(systemName: "cart.fill")
                            }
                            .font(.body)
                            .foregroundColor(Color("color2"))
                        ){
                        ForEach(items, id: \.self) { item in
                            Text(item)
                        }
                        .onDelete(perform: self.delete)
                        .onMove(perform: move)
                    }
                }
                .navigationTitle("My Shopping List")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        EditButton()
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        addButton
                    }
                }.accentColor(Color("color3"))
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
