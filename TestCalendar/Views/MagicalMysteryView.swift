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
            BackgroundRectangleCellView()
            SteveAppleImageCell()
            TitleImageView()
        }
    }
}

struct MagicalMysteryView_Previews: PreviewProvider {
    static var previews: some View {
        MagicalMysteryView()
        
    }
}

struct TitleImageView: View {
    var body: some View {
        Text("One more thing")
            .foregroundColor(Color.white)
            .bold()
            .font(.largeTitle)
            .padding(.bottom, 500)
    }
}

