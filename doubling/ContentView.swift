import SwiftUI

struct ContentView: View {
    @State private var alertIsPresented = false
   
    var body: some View {
        NavigationView {
           VStack{
                List {
                    sumOfAsset()
                    Section(header: Text("Acccounts")){
                        NavigationLink(destination: ContentView2()){
                            accountRow()
                        }
                        NavigationLink(destination: ContentView2()){
                            accountRow()
                        }
                        NavigationLink(destination: ContentView2()){
                            accountRow()
                        }
                    }
                }
                .navigationTitle("Doubling")
                .navigationBarItems(
                    leading: Button {
                        self.alertIsPresented = true
                    } label: {
                        Text("편집")
                    }
                    .alert(isPresented: $alertIsPresented){
                        Alert(title: Text("알림"), message: Text("이 버튼은 아직 동작하지 않습니다."), dismissButton: .default(Text("Dismiss")))
                    }
                    ,
                    trailing: Button {
                        
                    } label: {
                        Image(systemName: "plus")
                    }
                )
            }
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
