//
//  ElecBarView.swift
//  AutoHome
//
//  Created by Sandeep on 01/09/23.
//

import SwiftUI

struct ElecBarView: View {
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
                ElecAddView()
                    .presentationDetents([.height(150),.medium, .large])
            })
            
            .padding()
        }
        .background(colorBackground)
    }
}

struct ElecBarView_Previews: PreviewProvider {
    static var previews: some View {
        ElecBarView()
    }
}
