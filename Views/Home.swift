//
//  Home.swift
//  RoboChef
//
//  Created by Alex Pallozzi on 5/19/23.
//

import SwiftUI

struct Home: View {
    
    @State var items : [String] = [
        "tostidos pizza rolls", "hello", "hello"
    ]
    
    var addButton: some View {
        Button("Add", action: {
            addItem()
        }).frame(width: 100, height: 100, alignment: .trailing)
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
                    VStack {
                        List {
                            Section(
                                header:
                                    HStack {
                                        Image(systemName: "cart.fill")
                                    }
                                    .font(.body)
                                    .foregroundColor(Color("color2"))
                                )
                            {
                                ForEach(items, id: \.self) { item in
                                    HStack {
                                        Ellipse().frame(width: 5, height: 5)
                                            .foregroundColor(Color("color3"))
                                        Text(item)
                                    }
                                }
                                .onDelete(perform: self.delete)
                                .onMove(perform: move)
                            }
                            Section(
                                header:
                                    HStack {
                                        Image(systemName: "book.fill")
                                    }
                                    .font(.body)
                                    .foregroundColor(Color("color2"))
                                )
                            {
                                ForEach(items, id: \.self) { item in
                                    HStack {
                                        Ellipse().frame(width: 5, height: 5)
                                            .foregroundColor(Color("color3"))
                                        Text("pantryITem")
                                    }
                                }
                                .onDelete(perform: self.delete)
                                .onMove(perform: move)
                            }
                        }
                        .navigationTitle("Items")
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
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
