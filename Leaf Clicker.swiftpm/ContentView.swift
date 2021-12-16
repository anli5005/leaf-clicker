import SwiftUI

struct ContentView: View {
    @State var clicks = 0
    @State var leaf = "🍂"
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack {
                Text("\(clicks)").font(.largeTitle).fontWeight(.bold).padding(.horizontal)
                Button {
                    clicks += 1
                } label: {
                    Text(leaf).font(Font.system(size: 256))
                }
                Picker("Leaf", selection: $leaf) {
                    Text("Autumn Leaves").tag("🍂")
                    Text("Maple Leaf").tag("🍁")
                    Text("Breezy Leaves").tag("🍃")
                    Text("Leaf of Lettuce").tag("🥬")
                    Text("A bunch of leaves with wood").tag("🌳")
                    Text("LEAF").tag("LEAF")
                    Text("Festive leaves").tag("🎄")
                }.padding(.horizontal).background(Color.white).cornerRadius(16).pickerStyle(MenuPickerStyle()).padding(.horizontal).environment(\.colorScheme, .light)
            }.frame(maxWidth: .infinity, maxHeight: .infinity).background(LinearGradient(colors: [.brown, .orange], startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
            Button("Cheat") {
                clicks = Int.max
            }.padding([.bottom, .trailing])
        }
    }
}
