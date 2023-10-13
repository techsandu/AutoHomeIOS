//
//  CategorySectionView.swift
//  AutoHome
//
//  Created by Sandeep on 01/09/23.
//

import SwiftUI

struct CategorySectionView: View {
    @State var isRotate:Bool
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Text("Category")
                .rotationEffect(Angle(degrees: isRotate ? 90 : -90))
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }
        .background(colorGray.cornerRadius(12))
    
    }
}

struct CategorySectionView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySectionView(isRotate: true)
    }
}
