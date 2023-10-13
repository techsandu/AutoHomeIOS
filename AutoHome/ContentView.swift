//
//  ContentView.swift
//  AutoHome
//
//  Created by Sandeep on 31/08/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var navigation:Navigation
    @State private var isAnimated = false
    @State var selectedIndex = 0
    @State var path = Navigation().path
    @State var showSheet = false
    var body: some View {
        NavigationStack(path: $path) {
            
            ZStack{
                    VStack(spacing: 0, content: {
                        NavigationBarView()
                            .padding(.horizontal,15)
                            .padding(.bottom)
                            .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                            .shadow(color: Color.black.opacity(0.05), radius: 5,x:0,y:5)
                            .opacity(isAnimated ? 1 : 0)
                            .offset(x:0,y:isAnimated ? 0 : 25)
                            .onAppear(perform:{
                                withAnimation(.easeOut(duration: 0.5)) {
                                    isAnimated.toggle()
                                }
                            })
                        ScrollView(.vertical,showsIndicators: false) {
                            VStack(spacing: 0) {
                                SliderTabView()
                                    .frame(height: UIScreen.main.bounds.width / 1.475)
                                    .padding(.vertical,20)
//                                CategoryGridView()
                                ScrollView(.horizontal,showsIndicators: false) {
                                    LazyHGrid(rows: gridLayout,alignment: .center,spacing: columnSpacing,pinnedViews: []) {
                                        Section(header: CategorySectionView(isRotate: false),
                                                footer: CategorySectionView(isRotate: true)) {
                                            ForEach(categoryArray){category in
//                                               CategoryItemView(categoeryData: category)
                                                Button {
                                                    path.append("Zys")
//                                                    withAnimation(.easeOut) {
//                                                        navigation.curren = category.id
//                                                        navigation.navTitle = category.title
//                                                        navigation.showCategory = true
//                                                    }
                                                } label: {
                                                    HStack(alignment: .center,spacing: 6, content: {
                                                        Image(systemName: category.icon)
                                                            .renderingMode(.template)
                                                            .resizable()
                                                            .scaledToFit()
                                                            .frame(width: 30,height: 30,alignment: .center)
                                                            .foregroundColor(.gray)
                                                        Text(category.title)
                                                            .fontWeight(.light)
                                                            .foregroundColor(.gray)
                                                        
                                                        Spacer()
                                                    }
                                                    )}
                                                .padding()
                                                .background(Color.white.cornerRadius(12))
                                                .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray,lineWidth: 1))
                                           }
                                            
                                        }
                                        
                                    }
                                    .frame(height: 140)
                                    .padding(.horizontal,15)
                                    .padding(.vertical,10)
                                    .navigationDestination(for: String.self) { string in
//                                        CardContentView()
                                        switch string{
                                        case "Zys":
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
                                            .toolbar {
                                                               Button("Add") {
                                                                   showSheet.toggle()
                                                               }
                                                               .sheet(isPresented: $showSheet) {
                                                                   CardAddView()
                                                                  .presentationDetents([.height(400),.medium, .large])
                                                               }
                                                           }
                                        default:
                                            CardDetails(clickedData:.constant(cardDataArray[0]))
                                        }

                                    }
                                }
                                HomeFooter()
                                    .padding(.horizontal)
                            }
                        }
                    })
                    .background(colorBackground.ignoresSafeArea(.all,edges: .all))
                
            }
            .ignoresSafeArea(.all,edges: .top)
            
        }
 
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Navigation())
    }
}
