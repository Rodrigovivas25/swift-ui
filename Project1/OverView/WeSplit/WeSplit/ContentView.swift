//
//  ContentView.swift
//  WeSplit
//
//  Created by Rodrigo Vivas on 17/12/20.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    @State private var name = ""
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = 0
    var body: some View {
        //NavigationView {
        //    Form {
        //        Section {
        //            Text("Hello, world!")
        //        }
        //    }
        //    .navigationBarTitle(Text("SwiftUI"), displayMode: .inline)
        //    .navigationBarTitle("SwiftUI")
        //}
        //Button("Tap Count \(tapCount)") {
        //    self.tapCount += 1
        //}
        //Form {
        //    TextField("Enter your name", text: $name) //two-way binding
        //    Text("Your name is \(name)")
        //}
        //Form {
        //    ForEach(0 ..< 100) {
        //        Text("Row \($0)")
        //    }
        //}
        VStack {
            Picker("Select your student", selection: $selectedStudent) {
                ForEach(0 ..< students.count) {
                    Text(self.students[$0])
                }
            }
            Text("You chose: Student # \(students[selectedStudent])")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
