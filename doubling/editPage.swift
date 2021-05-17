import SwiftUI

struct editPage: View {
    @State private var accountName: String = ""
    @State private var accountBank: String = "카카오뱅크"
    @State private var totalAsset: Int = 0
    @State private var months: Int = 0
    @State private var years: Int = 0
    @State private var interset: Double = 0.0
    
    @State var isPresented = false
    @State var username: String = ""
        @State var isPrivate: Bool = true
        @State var notificationsEnabled: Bool = false
        @State private var previewIndex = 0
        var previewOptions = ["Always", "When Unlocked", "Never"]

        var body: some View {
            NavigationView {
                List {
                    Section(header: Text("PROFILE")) {
                        TextField("Username", text: $username)
                        Toggle(isOn: $isPrivate) {
                            Text("Private Account")
                        }
                    }
                    
                    Section(header: Text("NOTIFICATIONS")) {
                        Toggle(isOn: $notificationsEnabled) {
                            Text("Enabled")
                        }
                        Picker(selection: $previewIndex, label: Text("Show Previews")) {
                            ForEach(0 ..< previewOptions.count) {
                                Text(self.previewOptions[$0])
                            }
                        }
                    }
                    
                    Section(header: Text("ABOUT")) {
                        HStack {
                            Text("Version")
                            Spacer()
                            Text("2.2.1")
                        }
                    }
                    
                    Section {
                        Button(action: {
                            print("Perform an action here...")
                        }) {
                            Text("Reset All Settings")
                        }
                    }
                }
                .navigationBarTitle("Settings")
                .listStyle(GroupedListStyle())
            }
        }
}

struct editPage_Previews: PreviewProvider {
    static var previews: some View {
        editPage()
            .previewDevice("iPhone 12")
    }
}
