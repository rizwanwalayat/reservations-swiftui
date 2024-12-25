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
            Text("Little Lemon Restaurant")
                .font(.title)
                .foregroundColor(.gray)
                .background(Color.black)
                .padding(.init(top: 20, leading: 10, bottom: 20, trailing: 10))
                .background(.gray)
            //            MySwiftUIView()
            Text(attributedString)
                .font(.system(size: 36,
                              weight: .light,
                              design: .serif))
                .italic()
                .lineLimit(1)
                .fixedSize(horizontal: false, vertical: true)
           
            Text("Hello, \(inputName)!")
            Stepper {
                Text("Reservation for: \(personCount)")
            } onIncrement: {
                personCount += 1
            } onDecrement: {
                personCount = (personCount == 1) ? 1 : personCount - 1
            }
            HStack {
                Label("Thunder", systemImage: "cloud.bolt.rain.fill")
                Label("Lighting", systemImage: "bolt.fill")
            }
            
            ReservationForm()
        }
        .padding()
    }
}

#Preview {
    ContentView(personCount: 10)
}
