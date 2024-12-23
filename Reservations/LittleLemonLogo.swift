//
//  LittleLemonLogo.swift
//  Reservations
//
//  Created by Techtiz PM on 24/12/2024.
//

import SwiftUI

struct LittleLemonLogo: View {
//    @Binding var bindingVariable: Bool
    var myClass: MyClass
    var body: some View {
        Image(systemName: "globe")
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 50)
            .onTapGesture {
                myClass.showLogo.toggle()           }
    }
}

//#Preview {
//    LittleLemonLogo(bindingVariable: <#Binding<Bool>#>)
//}
