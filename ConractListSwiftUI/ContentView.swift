//
//  ContentView.swift
//  ConractListSwiftUI
//
//  Created by Данис Гаязов on 29.10.24..
//
import SwiftUI

struct ContentView: View {
    
    let persons: [Person] = Person.getPersonData()
    
    var body: some View {
        TabView() {
            NavigationView {
                ContactListView(persons: persons)
                    .navigationTitle("Contract List")
            }
            .tabItem {
                Image(systemName: "person.3.fill")
                Text("Contacts")
            }
            NavigationView {
                ContactDetailedView(persons: persons)
                    .navigationTitle("Contract List")
            }
            .tabItem {
                Image(systemName: "phone")
                Text("Numbers")
            }
        }
    }
}

#Preview {
    ContentView()
}
