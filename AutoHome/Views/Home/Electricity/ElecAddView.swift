//
//  ElecAddView.swift
//  AutoHome
//
//  Created by Sandeep on 04/09/23.
//

import SwiftUI

struct ElecAddView: View {
    @State private var elecValue = ""
    @State private var date = Date()
    var body: some View {
        ZStack{
            VStack{
                Text("Mark Your Readings")
                    .foregroundColor(.gray)
                HStack{
                    Spacer()
                    TextField("Reading", text:$elecValue)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray,lineWidth: 1))
                    
                    DatePicker("", selection: $date, displayedComponents: [.date])
                                .padding()
                    Spacer()
                }
                Button {
                    print("Add")
                } label: {
                    Text("Submit")
                }
                .buttonStyle(.bordered)
                .tint(.black)
                .frame(width: 300)
                .foregroundColor(.white)
                Spacer()
            }
        }
        
    }
}

struct ElecAddView_Previews: PreviewProvider {
    static var previews: some View {
        ElecAddView()
    }
}
