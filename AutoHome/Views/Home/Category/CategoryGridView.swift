//
//  CategoryGridView.swift
//  AutoHome
//
//  Created by Sandeep on 01/09/23.
//

import SwiftUI

struct CategoryGridView: View {
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            LazyHGrid(rows: gridLayout,alignment: .center,spacing: columnSpacing,pinnedViews: []) {
                Section(header: CategorySectionView(isRotate: false),
                        footer: CategorySectionView(isRotate: true)) {
                    ForEach(categoryArray){category in
                       CategoryItemView(categoeryData: category)
                   }
                }
            }
            .frame(height: 140)
            .padding(.horizontal,15)
            .padding(.vertical,10)
        }
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
    }
}
