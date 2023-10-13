//
//  CardAddView.swift
//  AutoHome
//
//  Created by Sandeep on 21/09/23.
//

import SwiftUI
struct CardAddView: View {
    @State private var cardNumber = ""
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Text("Card Number")
                        .padding([.leading,.trailing])
                    Spacer()
                }
                
                TextField("", text:$cardNumber)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 5).stroke(Color.gray,lineWidth: 1))
                    .padding([.leading,.trailing])
                HStack{
                    Text("Card Name")
                        .padding([.leading,.trailing])
                    Spacer()
                }
                TextField("", text:$cardNumber)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 5).stroke(Color.gray,lineWidth: 1))
                    .padding([.leading,.trailing])
                HStack{
                    VStack{
                        HStack{
                            Text("Expiry Number")
                            Spacer()
                        }
                        
                        TextField("", text:$cardNumber)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 5).stroke(Color.gray,lineWidth: 1))
                            .padding([.trailing])
                    }
                    VStack{
                        HStack{
                            Text("CVV")
                            Spacer()
                        }
                        TextField("", text:$cardNumber)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 5).stroke(Color.gray,lineWidth: 1))
                    }
                }
                .padding()
                Button {
                    print("Save")
                } label: {
                    HStack{
                        Text("Save")
                           
                    }
                    .frame(minWidth: 0,maxWidth: .infinity)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(20)
                    .padding([.leading,.trailing])
                    
                }

            }
        }
    }
}

struct CardAddView_Previews: PreviewProvider {
    static var previews: some View {
        CardAddView()
    }
}




