//
//  CardListView.swift
//  AutoHome
//
//  Created by Sandeep on 21/09/23.
//

import SwiftUI

struct CardListView: View {
    @State var flag = true
    @State var cardData:CardDataModel?
    @State var path = Navigation().path
    var body: some View {
    
            VStack {
                List {
                    ForEach(cardDataArray){cardData in
                        VStack{
                            HStack{
                                Image(systemName: "creditcard")
                                    .foregroundColor(.gray)
                                Text(String(cardData.number))
                                    .fontWeight(.bold)
                                Spacer()
                                Image(systemName: "doc.on.doc")
                                    .foregroundColor(.gray)
                                Button {
                                    path.append("jhk")
                                } label: {
                                    Image(systemName:"chevron.right")
                                        .frame(width: 50,height: 50)
                                        .foregroundColor(.gray)
                                }
                                .navigationDestination(for: String.self) { string in
                                    CardDetails(clickedData:.constant(cardDataArray[0]))
                                }
                            }
                            HStack{
                                
                                Text(cardData.cName)
                                    .fontWeight(.light)
                                    .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 0))
                                Spacer()
                            }
                        }
                        
                    }
                }
                .listStyle(.automatic)
                .background(colorBackground.edgesIgnoringSafeArea(.all))
                 .scrollContentBackground(.hidden)
            }

    }
}

struct CardListView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView(cardData:cardDataArray[0])
    }
}


struct CommonButton:View{
    var body: some View{
        Button {
            
        } label: {
            Image(systemName:"chevron.right")
                .frame(width: 50,height: 50)
                .foregroundColor(.gray)
        }

    }
}
