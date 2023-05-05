//
//  OnboardingView.swift
//  Kel5Mini1
//
//  Created by Jonathan Heriyanto on 03/05/23.
//

import SwiftUI

struct OnboardingView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading, spacing: 34){
                Image("aset1")
                VStack(alignment: .leading, spacing: 8){
                    Text("We makes your meal-time!")
                        .font(Font.custom("Fredoka-Regular", size: 18))
                        .foregroundColor(.gray)
                    Text("Make your meal-time more enjoyable, continue now!")
                        .font(Font.custom("Fredoka-Medium", size: 26))
                        .foregroundColor(Color("PB-800"))
                    
                    NavigationLink {
                        CreateJoinView()
                    } label: {
                        Text("Continue")
                            .frame(maxWidth: .infinity)
                            .font(Font.custom("Fredoka-Medium", size: 16))
                            .padding()
                            .frame(height: 44)
                            .background(Color("Secondary"))
                            .cornerRadius(6)
                            .foregroundColor(Color(.white))
                    }
                    .padding(.top)
                }
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
        .onDisappear(){
            dismiss()
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
