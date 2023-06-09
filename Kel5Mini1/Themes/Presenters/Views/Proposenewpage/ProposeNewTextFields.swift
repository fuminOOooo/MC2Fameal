//
//  Homepage1.swift
//  Kel5Mini1
//
//  Created by Elvis Susanto on 28/04/23.
//

import Foundation
import SwiftUI
import CoreData

struct ProposeNewTextFields: View {
    
    @Binding var eventName: String
    @Binding var eventDesc: String
    
    var body: some View {
        VStack (spacing: 4) {
            
            VStack {
                // Component 4
                TextField(text: $eventName, prompt: Text("Add event name")) {
                }
                .font(Font.custom("Fredoka-Medium", size: 17))
                .padding(.init(top: 10, leading: 16, bottom: 6, trailing: 16))
                
                Divider()
                
                // Component 5
                TextField(text: $eventDesc, prompt: Text("Add description")) {
                }
                .font(Font.custom("Fredoka-Regular", size: 17))
                .padding(.init(top: 4, leading: 16, bottom: 8, trailing: 16))
                
                Spacer()
                
            }
            .background(Color("Shadow"))
            .cornerRadius(10)
        }
        .padding(.init(top: 0, leading: 6, bottom: 0, trailing: 6))
    }
}
