//
//  CategoryItemView.swift
//  AutoHome
//
//  Created by Sandeep on 01/09/23.
//

import SwiftUI

struct CategoryItemView: View {
    @EnvironmentObject var navigation:Navigation
    let categoeryData:CategoryModel
    var body: some View {
        Button {
            withAnimation(.easeOut) {
                navigation.curren = categoeryData.id
                navigation.navTitle = categoeryData.title
                navigation.showCategory = true
            }
        } label: {
            HStack(alignment: .center,spacing: 6, content: {
                Image(systemName: categoeryData.icon)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30,height: 30,alignment: .center)
                    .foregroundColor(.gray)
                Text(categoeryData.title)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            )}
        .padding()
        .background(Color.white.cornerRadius(12))
        .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray,lineWidth: 1))


        
    }
    
    func showNavScreen(){
        
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(categoeryData:categoryArray[1])
    }
}
