import SwiftUI
import UIKit


struct podcastView: View {
    @State private var showDetails = false
    @State private var showView = false
    @State private var showAbout = false
    var body: some View {
        
        NavigationView {
            VStack {
                
                Text("PODCASTS")
                    .font(.custom("Georgia", size: 25))
            }
        }
        
        /*.frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(Color.yellow)
        .cornerRadius(10)
    
        .padding(.horizontal)*/
            }
    
}

struct podcastView_Previews: PreviewProvider {
    static var previews: some View {
        podcastView()
    }
}



