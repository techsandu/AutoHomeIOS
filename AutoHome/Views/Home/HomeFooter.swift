//
//  HomeFooter.swift
//  AutoHome
//
//  Created by Sandeep on 31/08/23.
//

import SwiftUI

struct HomeFooter: View {
    var body: some View {
        VStack(alignment: .center,spacing: 10, content: {
            Text("Home app is a new concept for all people to add nessceary data that they need,all the utility and hosuholed")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            Image(systemName: "homekit")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            Text("Copyright @ AutoHome\n All rights reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
            
        })
    }
}

struct HomeFooter_Previews: PreviewProvider {
    static var previews: some View {
        HomeFooter()
    }
}
