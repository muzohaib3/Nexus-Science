import SwiftUI

struct SplashViewController: View {
    
    @State private var goToLogin = false
    
    var body: some View {
        NavigationStack{
            
            VStack{
                VStack{
                    Image("filter")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 100,maxHeight: 100)
                    
                    Text("NEXUS")
                        .foregroundStyle(Color.black)
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                }
                .padding(.all,50)
                .background()
                .cornerRadius(20)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.blue)
            .navigationDestination(isPresented: $goToLogin) {
                LoginViewController()
             }
            .onAppear{
                DispatchSerialQueue.main.asyncAfter(deadline: .now() + 2){
                    goToLogin = true
                }
            }
        }
        
    }
}

#Preview {
    SplashViewController()
}
