//
//  accountRow.swift
//  doubling
//
//  Created by blair on 2021/05/18.
//

import SwiftUI

struct accountRow: View {
    var body: some View {
        HStack {
            Image("kakaobank_logo")
                .resizable()
                .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("카카오뱅크")
            Spacer()
            Image(systemName: "arrow.up")
        }
    }
}

struct accountRow_Previews: PreviewProvider {
    static var previews: some View {
        accountRow()
    }
}
