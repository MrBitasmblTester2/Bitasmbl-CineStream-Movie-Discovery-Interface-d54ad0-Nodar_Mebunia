import SwiftUI

struct MovieCardView: View {
    let movie: Movie
    @EnvironmentObject var favVM: FavoritesViewModel
    @State private var pressed = false
    var body: some View {
        VStack {
            Rectangle().fill(Color.gray.opacity(0.3)).frame(height:180)
                .overlay(Text(movie.title).foregroundColor(.white).bold())
                .cornerRadius(8)
            HStack{ Text(movie.year).font(.subheadline); Spacer();
                Button(action:{ withAnimation(.spring()){ favVM.toggle(movie) } }){
                    Image(systemName: favVM.contains(movie) ? "heart.fill" : "heart").foregroundColor(.red)
                }
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius:12).stroke(Color.secondary))
        .scaleEffect(pressed ? 0.97 : 1)
        .onTapGesture { withAnimation(.easeIn(duration:0.12)){ pressed=true; DispatchQueue.main.asyncAfter(deadline:.now()+0.12){ pressed=false } } }
    }
}