//
//  CommonAddNavBar.swift
//  AutoHome
//
//  Created by Sandeep on 21/09/23.
//

import SwiftUI

struct CommonAddNavBar: View {
    @State private var showSheet = false
    @EnvironmentObject var navigation:Navigation
    var body: some View {
        HStack{
            Button {
                withAnimation(.easeOut) {
                    navigation.showCategory = false
                }
            } label: {
                Text("Back")
            }
            .padding()
            Spacer()
            Text(navigation.navTitle)
            Spacer()
            Button {
                showSheet.toggle()
            } label: {
                Text("Add")
            }
            .sheet(isPresented: $showSheet, content: {
                switch navigation.curren{
                case 1:
                    ElecAddView()
                        .presentationDetents([.height(150),.medium, .large])
                default:
                    CardAddView()
                        .presentationDetents([.height(400),.medium, .large])
                }
                
            })
            
            .padding()
        }
        .background(colorBackground)
    }
}

struct CommonAddNavBar_Previews: PreviewProvider {
    static var previews: some View {
        CommonAddNavBar()
    }
}
