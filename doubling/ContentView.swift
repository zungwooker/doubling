import SwiftUI

struct ContentView: View {
    @State private var alertIsPresented = false
   
    var body: some View {
 
        NavigationView() {
            VStack{
                sumOfAsset()
                    .padding(.horizontal)
                
                Form{
                    Section(header: Text("Acccounts")){
                        NavigationLink(destination: ContentView2()){Text("카카오뱅크")}
                        NavigationLink(destination: ContentView3()){Text("신한은행")}
                    }//Section
                }//Form
            }//VStack
            .navigationTitle("Doubling")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    Button(action: {
                        self.alertIsPresented = true
                        print("\(alertIsPresented)")
                    }) {
                        Label("Save", systemImage: "plus")
                    }
                    .alert(isPresented: $alertIsPresented) {
                                Alert(title: Text("Title"), message: Text("This is a alert message"), dismissButton: .default(Text("Dismiss")))
                            }
                }
                ToolbarItemGroup(placement: .navigationBarLeading){
                    Button("편집") {
                        print("well done!")
                    }
                }
            }//VStack methods
        }
    }
}

struct ContentView2: View {
    var body: some View {
        Text("카카오뱅크 페이지")
            .navigationTitle("카카오뱅크")
    }
}

struct ContentView3: View {
    var body: some View {
        Text("신한은행 페이지")
            .navigationTitle("신한은행")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 mini")
    }
}
