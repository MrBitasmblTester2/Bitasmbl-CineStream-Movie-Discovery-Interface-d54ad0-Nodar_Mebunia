import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView { MovieGridView().padding() }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View { ContentView() }
}