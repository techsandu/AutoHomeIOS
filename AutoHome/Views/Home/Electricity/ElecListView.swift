//
//  ElecListView.swift
//  AutoHome
//
//  Created by Sandeep on 01/09/23.
//

import SwiftUI

struct ElecListView: View {
       
       var body: some View {
           VStack {
               List {
                   ForEach(electDataArray){electData in
                       VStack{
                           HStack{
                               Image(systemName: "water.waves.and.arrow.up")
                                   .foregroundColor(.gray)
                               Text(String(electData.value))
                                   .fontWeight(.bold)
                               Spacer()
                               Image(systemName: "water.waves.and.arrow.up")
                                   .foregroundColor(.green)
                               Text("15")
                                   .fontWeight(.light)
                                   .foregroundColor(.green)
                                   
                           }
                           HStack{
                               
                               Text("June 29")
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

struct ElecListView_Previews: PreviewProvider {
    static var previews: some View {
        ElecListView()
    }
}
