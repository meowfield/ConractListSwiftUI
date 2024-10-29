//
//  ContactView.swift
//  ConractListSwiftUI
//
//  Created by Данис Гаязов on 28.10.24..
//
import SwiftUI

struct ContactDetailedView: View {
    
    var persons: [Person]
    
    var body: some View {
        VStack {
            List(persons, id: \.fullname) {person in
                VStack {
                    Spacer()
                    HStack {
                        Text("\(person.fullname)")
                            .foregroundStyle(Color.gray)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    
                    Divider()
                    
                    HStack {
                        Image(systemName: "phone")
                        Text(" \(person.phone)")
                        Spacer()
                    }
                    
                    Divider()
                    
                    HStack {
                        Image(systemName: "envelope")
                        Text("\(person.email)")
                        Spacer()
                    }
                }
            }
            .listStyle(PlainListStyle())
        }
    }
}


#Preview {
    let samplePersons = [
        Person(name: "John", surname: "Doe", phone: "123-456-7890", email: "john.doe@example.com"),
        Person(name: "Jane", surname: "Smith", phone: "098-765-4321", email: "jane.smith@example.com")
    ]
    ContactDetailedView(persons: samplePersons)
}
