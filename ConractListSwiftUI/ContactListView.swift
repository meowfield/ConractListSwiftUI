//
//  ContentView.swift
//  ConractListSwiftUI
//
//  Created by Данис Гаязов on 22.10.24..
//

import SwiftUI

struct ContactListView: View {
    
    var persons: [Person]
    
    var body: some View {
        
        VStack {
            List(persons, id: \.fullname) { person in
                NavigationLink(destination: PersonContactView(person: person)) {
                    Text("\(person.fullname)")
                }
            }
            .listStyle(PlainListStyle())
        }
        .padding()
    }
}

struct PersonContactView: View {
    
    let person: Person
    
    var body: some View {
        VStack {
            List {
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .foregroundColor(.blue)
                        .frame(width: 150, height: 150)
                    Spacer()
                }
                HStack {
                    Image(systemName: "phone").foregroundColor(.blue)
                    Text("\(person.phone)")
                }
                HStack {
                    Image(systemName: "envelope").foregroundColor(.blue)
                    Text("\(person.email)")
                }
            }
            .listStyle(PlainListStyle())
            .padding(.horizontal, -4)
        }
        .navigationTitle(person.fullname)
    }
}

#Preview {
    let samplePersons = [
        Person(name: "John", surname: "Doe", phone: "123-456-7890", email: "john.doe@example.com"),
        Person(name: "Jane", surname: "Smith", phone: "098-765-4321", email: "jane.smith@example.com")
    ]
    ContactListView(persons: samplePersons)
}
