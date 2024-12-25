//
//  ReservationForm.swift
//  Reservations
//
//  Created by Techtiz PM on 26/12/2024.
//

import SwiftUI

struct ReservationForm: View {
   @State var customerName: String = ""
    var body: some View {
        Form {
            TextField("Type Your Name", text: $customerName, onEditingChanged: { status in
                if !status {
                    print("End Editing")
                }
            })
                .onChange(of: customerName) { oldValue, newValue in
                    print(newValue)
                }
                .onSubmit {
                    print("Submitted")
                }
        }
        .padding()
    }
}

#Preview {
    ReservationForm()
}
