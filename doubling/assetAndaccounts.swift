//
//  assetAndaccounts.swift
//  doubling
//
//  Created by blair on 2021/05/18.
//

import SwiftUI

struct assetAndaccounts: View {
    var body: some View {
        VStack {
            sumOfAsset()
                .padding(.horizontal)
            accounts()
        }
    }
}

struct assetAndaccounts_Previews: PreviewProvider {
    static var previews: some View {
        assetAndaccounts()
    }
}
