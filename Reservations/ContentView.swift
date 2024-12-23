//
//  ContentView.swift
//  Reservations
//
//  Created by Techtiz PM on 18/12/2024.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .padding()
//    }
//}
struct ContentView: View {
    @State var inputName: String = ""
    @State var personCount: Int = 1
    @State var showLogo: Bool = true
    @ObservedObject var myClass = MyClass()
    var body: some View {
        let attributedString = try! AttributedString(markdown: "Sign up to get **25%** discount")
        VStack {
            if myClass.showLogo {
                LittleLemonLogo(myClass: myClass)
            }
            MySwiftUIView()
            Text(attributedString)
                .font(.system(size: 36,
                              weight: .light,
                              design: .serif))
                .italic()
                .lineLimit(1)
            TextField("Enter your name", text: $inputName)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text("Hello, \(inputName)!")
            Stepper {
                Text("Reservation for: \(personCount)")
            } onIncrement: {
                personCount += 1
            } onDecrement: {
                personCount = (personCount == 1) ? 1 : personCount - 1
            }
        }
        .padding()
    }
}

#Preview {
    ContentView(personCount: 10)
}
