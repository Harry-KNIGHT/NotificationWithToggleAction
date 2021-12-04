//
//  SteveAppleImageCell.swift
//  TestCalendar
//
//  Created by Elliot knight on 04/12/2021.
//

import SwiftUI

struct SteveAppleImageCell: View {
    var body: some View {
        Image("SteveJobs")
            .resizable()
            .scaledToFill()
            .frame(width: 350, height: 350, alignment: .center)
        
    }
}

struct SteveAppleImageCell_Previews: PreviewProvider {
    static var previews: some View {
        SteveAppleImageCell()
    }
}
