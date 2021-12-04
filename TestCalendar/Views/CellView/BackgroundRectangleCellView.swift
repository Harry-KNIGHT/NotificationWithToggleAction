//
//  BackgroundRectangleCellView.swift
//  TestCalendar
//
//  Created by Elliot knight on 04/12/2021.
//

import SwiftUI

struct BackgroundRectangleCellView: View {
    var body: some View {
    Rectangle()
        .ignoresSafeArea()
    }
}

struct BackgroundRectangleCellView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundRectangleCellView()
    }
}
