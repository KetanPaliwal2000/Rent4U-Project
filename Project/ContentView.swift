import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // App Logo or Title
                Text("Login to get started")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 40)
                
                NavigationLink(destination: LandlordLogin()) {
                    
                    HStack {
                        Image(systemName: "house.fill")
                            .font(.system(size: 20))
                        Text("Landlord Login")
                            .font(.headline)
                    }
                    .padding(.vertical, 20)
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                
                NavigationLink(destination: TenantLogin()) {
                    HStack {
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Tenant Login")
                            .font(.headline)
                    }
                    .padding(.vertical, 20)
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                
                NavigationLink(destination: ResidentHomeView()) {
                    HStack {
                        Text("Anonymous Login")
                            .font(.headline)
                    }
                    .padding(.vertical, 20)
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .background(.black)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .simultaneousGesture(TapGesture().onEnded {
                    Task {
                        let result = await FireAuthHelper.shared.signInAnonymously()
                        if !result.isEmpty {
                            print("Error during anonymous login: \(result)")
                        } else {
                            print("Anonymous login successful")
                        }
                    }
                })
                
                Spacer()
            }
            .padding(.horizontal, 30)
            .padding(.top, 50)
            .navigationTitle(Text("Rent4U Clone"))
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    ContentView()
}
