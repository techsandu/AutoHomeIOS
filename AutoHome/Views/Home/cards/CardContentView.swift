//
//  CardContentView.swift
//  AutoHome
//
//  Created by Sandeep on 21/09/23.
//

import SwiftUI

struct CardContentView: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading,spacing: 5,content: {
    //            CommonAddNavBar()
    //                .padding(.horizontal)
    //                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                CardListView()
            }
            )
            .background(colorBackground)
            
        }

    }
}

struct cardContentView_Previews: PreviewProvider {
    static var previews: some View {
        CardContentView()
    }
}
