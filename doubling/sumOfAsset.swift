import SwiftUI

struct userInfo {
    var id: String
    var name: String
    var photoNum: String
    var totalAsset: Int
}

struct sumOfAsset: View {
    @State private var userinfo = userInfo(id: "B611095", name: "서정욱", photoNum: "2105170001", totalAsset: 35000000)
    
    
    var body: some View {
        HStack {
            Image("profile1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 3)
            Text(userinfo.name + "님")
            Spacer()
            
            Text("총액 ")
            Text("\(userinfo.totalAsset)")
            Text("원")
        }
        .padding(.trailing)
    }
}

struct sumOfAsset_Previews: PreviewProvider {
    static var previews: some View {
        sumOfAsset()
            .previewDevice("iPhone 12 mini")
    }
}
