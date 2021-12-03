//
//  MagicalMysteryView.swift
//  TestCalendar
//
//  Created by Elliot knight on 03/12/2021.
//

import SwiftUI

struct MagicalMysteryView: View {
    var body: some View {
        ZStack {
            
//            Rectangle()
//                .edgesIgnoringSafeArea([.top])
//                .padding(.bottom, 5)

            Image("SteveJobs")
                .resizable()
                .scaledToFill()
                .frame(width: 400, height: 400, alignment: .center)
                .padding(.bottom)
                
            
            Text("One more thing")
                .foregroundColor(Color.white)
                .bold()
                .font(.largeTitle)
                .padding(.bottom, 650)
            
        }
    

    }

    
}

struct MagicalMysteryView_Previews: PreviewProvider {
    static var previews: some View {
        MagicalMysteryView()
        
    }
}
