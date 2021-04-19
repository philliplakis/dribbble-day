//
//  ContentView.swift
//  thingstodo
//
//  Created by Phillip Lakis on 19/4/21.
//

import SwiftUI

let dateFormatter = DateFormatter()

struct NoteItem: Codable, Hashable, Identifiable {
    let id: Int
    let text: String
    var complete: Bool
    var date = Date()
    var dateText: String {
        dateFormatter.dateFormat = "MMM d yyyy, h:mm a"
        return dateFormatter.string(from: date)
    }
}


struct ContentView: View {
    @State var show = false
    @Namespace var namespace
    @State var itemToDelete: NoteItem?

    let placeholderString: String = "Start typing..."
    @State var id: Int = 0
    @State private var noteText: String = "Start typing..."
    @State var complete: Bool = false

    @State var items: [NoteItem] = {
        guard let data = UserDefaults.standard.data(forKey: "notes") else { return [] }
        if let json = try? JSONDecoder().decode([NoteItem].self, from: data) {
            return json
        }
        return []
    }()
    
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack {
            if !show {
                Color("beige")
                    .ignoresSafeArea()
            } else {
                Color("black")
                    .ignoresSafeArea()
            }
        
            VStack {
                                
                if !show {
                    HStack {
                        Spacer()
                        
                        HexButton()
                    }
                    .padding(.horizontal)
                    .matchedGeometryEffect(id: "showHeader", in: namespace)

                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("Things")
                            .font(.system(size: 72, weight: .black))
                        Text("to do")
                            .font(.system(size: 72, weight: .black))
                            .offset(y: -30)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 120, alignment: .leading)
                    .padding(.leading, 24)
                    .padding(.bottom, 32)
                    .matchedGeometryEffect(id: "showHeading", in: namespace)
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: "calendar")
                            Text("Today")
                                .font(.system(size: 16, weight: .bold))
                                .padding(.leading, 8)
                        }
                        .padding(.leading, 4)
                        
                        Rectangle()
                            .frame(width: 375, height: 2)
                    }
                    
                    if (items.count > 0) {
                        ForEach(items, id: \.self) { note in
                            Text(note.text)
                                .font(.system(size: 36, weight: .black))
                                .strikethrough(note.complete)
                                .onTapGesture{
                                    self.noteText = note.text
                                    self.id = note.id
                                    self.complete = note.complete
                                    updateTask()
                                }
                                .onLongPressGesture(minimumDuration: 0.2) {
                                    self.itemToDelete = note
                                    deleteNote()
                                }
                                .foregroundColor(note.complete ? Color("grey") : Color("black"))
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 24)

                        Spacer()
                        HStack {
                            Spacer()
                            Button(action: {
                                withAnimation(.spring()) {
                                    show.toggle()
                                }
                            }) {
                                Circle()
                                    .frame(width: 50, height: 50, alignment: .trailing)
                                    .overlay(
                                        Image(systemName: "plus")
                                            .font(.system(size: 24, weight: .light))
                                            .foregroundColor(Color("beige"))
                                    )
                                    .foregroundColor(Color("black"))
                                    .padding(32)
                                    .matchedGeometryEffect(id: "showCircle", in: namespace)
                            }
                        }
                    } else {
                        Circle()
                            .frame(width: 350, height: 350)
                            .overlay(
                                Image(systemName: "plus")
                                    .font(.system(size: 24, weight: .light))
                                    .foregroundColor(Color("beige"))
                            )
                            .padding(32)
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    self.noteText = self.placeholderString
                                    show.toggle()
                                }
                            }
                            .matchedGeometryEffect(id: "showCircle", in: namespace)
                        Spacer()
                    }

                } else {
                    HStack {
                        Spacer()
                        
                        Text("Cancel")
                            .font(.system(size: 14, weight: .bold))
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    self.noteText = self.placeholderString
                                    show.toggle()
                                }
                            }
                    }
                    .padding(.horizontal, 32)
                    .matchedGeometryEffect(id: "showHeader", in: namespace)

                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("Add a")
                            .font(.system(size: 72, weight: .black))
                        Text("thing")
                            .font(.system(size: 72, weight: .black))
                            .offset(y: -30)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 120, alignment: .leading)
                    .padding(.leading, 24)
                    .padding(.bottom, 32)
                    .matchedGeometryEffect(id: "showHeading", in: namespace)
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: "calendar")
                            
                            Text("Today")
                                .font(.system(size: 16, weight: .bold))
                                .padding(.leading, 8)
                        }
                        .padding(.leading, 4)
                        
                        Rectangle()
                            .frame(width: 375, height: 2)
                    }
                    
                    TextEditor(text: $noteText)
                        .font(.system(size: 36, weight: .black))
                        .foregroundColor(self.noteText == placeholderString ? Color("grey") : Color("beige"))
                        .foregroundColor(Color("beige"))
                        .background(Color("black"))
                        .frame(maxWidth: .infinity, maxHeight: 350)
                        .padding()
                        .onTapGesture {
                            if self.noteText == placeholderString {
                                self.noteText = ""
                            }
                        }

                    HStack {
                        Spacer()
                        
                        Button(action: addTask) {
                            Circle()
                                .frame(width: 50, height: 50, alignment: .trailing)
                                .overlay(
                                    Image(systemName: "plus")
                                        .font(.system(size: 24, weight: .light))
                                        .foregroundColor(Color("black"))
                                )
                                .foregroundColor(Color("beige"))
                                .padding(32)
                        }
                        .matchedGeometryEffect(id: "showCircle", in: namespace)
                    }
                }
               
            }
            .foregroundColor(show ? Color("beige") : Color("black"))
        }
    }
    
    func updateTask() {
        if let row = items.firstIndex(where: {$0.id == id}) {
            let currentValue = items[row].complete
            items[row].complete = currentValue == false
            save()
        }
    }
    
    func addTask() {
        if (noteText == placeholderString) {
            return
        }
        let id: Int = Int.random(in: 1...100000)
        items.insert(NoteItem(id: id, text: noteText, complete: false), at: 0)
        noteText = placeholderString
        save()
        show = false
    }
    
    func deleteNote() {
        guard let itemToDelete = itemToDelete else { return }
        items = items.filter { $0 != itemToDelete }
        save()
    }
    
    func save() {
        guard let data = try? JSONEncoder().encode(items) else { return }
        UserDefaults.standard.set(data, forKey: "notes")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HexButton: View {
    var body: some View {
        Button(action: {}) {
            ZStack {
                Image(systemName: "hexagon")
                    .font(.system(size: 10, weight: .black))
                Image(systemName: "hexagon")
                    .font(.system(size: 24, weight: .light))
            }
            .foregroundColor(Color("black"))
        }
    }
}
