//
//  OLLAlgorithms.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 17-01-23.
//

import SwiftUI

struct OLLView: View {
    
    @ObservedObject var viewModel = OllViewModel()
    @Environment(\.presentationMode) var presentationMode
    @State var loading: Bool = true
    @State var starPressed: Bool = false
    
    var body: some View {
        
        ScrollView {
            
            if loading {
                
                ProgressView()
                    .padding(.top, 300)
                
            } else {
                
                ForEach(viewModel.data, id: \.self) { cube in
                    
                    LazyVStack {
                        ZStack {
                            
                            CubeView(patron: viewModel.transformData(data: cube.render), solution: cube.solution)
                            
                            StarComponent(isSaved: false)
                            
                        }
                        .frame(width: 300, height: 160)
                        .background(Color("backgroundButton"))
                        .cornerRadius(15)

                        
                        
                    }
                    
                       
                    
                }
                
            }
  
        }
        .onAppear {
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                loading.toggle()
            }
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("backgroundColor"))
        .navigationTitle("OLL Algorithms")
        .navigationBarBackButtonHidden()
        .navigationBarTitleDisplayMode(.automatic)
        .toolbar {
            
            ToolbarItem(placement: .navigationBarLeading) {
                BackButton(previousView: "Category")
                    .onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                    }
            }
            

  
            
        }
        
        
    }
    
}

struct OLLView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            OLLView()
        }
    }
}
