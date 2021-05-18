//
//  accounts.swift
//  doubling
//
//  Created by blair on 2021/05/18.
//

import SwiftUI

struct accounts: View {
    var body: some View {
        Form{
            Section(header: Text("Acccounts")){
                NavigationLink(destination: ContentView2()){Text("카카오뱅크")}
                NavigationLink(destination: ContentView3()){Text("신한은행")}
                NavigationLink(destination: ContentView3()){Text("하나은행")}
                NavigationLink(destination: ContentView3()){Text("국민은행")}
            }//Section
        }//Form
    }
}

struct accounts_Previews: PreviewProvider {
    static var previews: some View {
        accounts()
    }
}
