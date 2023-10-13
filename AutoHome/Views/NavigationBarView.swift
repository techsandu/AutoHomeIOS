//
//  NavigationBarView.swift
//  AutoHome
//
//  Created by Sandeep on 31/08/23.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        HStack(spacing: 4) {
            Image(systemName: "homekit")
                .resizable()
                .scaledToFit()
                .frame(width: 30,height: 30,alignment: .center)
            Text("AutoHome".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.gray)
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
