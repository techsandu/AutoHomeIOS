//
//  CardDetails.swift
//  AutoHome
//
//  Created by Sandeep on 21/09/23.
//

import SwiftUI

struct CardDetails: View {
    @Binding var clickedData:CardDataModel
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Text("Card Number")
                        .padding([.leading,.trailing])
                    Spacer()
                }
                
                TextField("", text:$clickedData.cName)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 5).stroke(Color.gray,lineWidth: 1))
                    .padding([.leading,.trailing])
                HStack{
                    Text("Card Name")
                        .padding([.leading,.trailing])
                    Spacer()
                }
                TextField("", text:$clickedData.cName)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 5).stroke(Color.gray,lineWidth: 1))
                    .padding([.leading,.trailing])
                HStack{
                    VStack{
                        HStack{
                            Text("Expiry Number")
                            Spacer()
                        }
                        
                        TextField("", text:$clickedData.expiry)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 5).stroke(Color.gray,lineWidth: 1))
                            .padding([.trailing])
                    }
                    VStack{
                        HStack{
                            Text("CVV")
                            Spacer()
                        }
                        TextField("", text:$clickedData.cName)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 5).stroke(Color.gray,lineWidth: 1))
                    }
                }
                .padding()
                Spacer()
                Button {
                    print("Save")
                } label: {
                    HStack{
                        Text("Update")
                           
                    }
                    .frame(minWidth: 0,maxWidth: .infinity)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(20)
                    .padding([.leading,.trailing,.bottom])
                    
                }

            }
        }
    }
}

struct CardDetails_Previews: PreviewProvider {
    static var previews: some View {
        CardDetails(clickedData:.constant(cardDataArray[0]))
    }
}
