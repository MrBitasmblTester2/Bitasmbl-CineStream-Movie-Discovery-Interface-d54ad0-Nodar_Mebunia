import SwiftUI

struct MovieGridView: View {
    @StateObject var favVM = FavoritesViewModel()
    let columns = [GridItem(.adaptive(minimum:150), spacing:16)]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing:16) {
                ForEach(sampleMovies) { m in
                    MovieCardView(movie: m).environmentObject(favVM)
                }
            }
            .padding()
        }
        .navigationTitle("CineStream")
    }
}