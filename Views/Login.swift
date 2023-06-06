//
//  Login.swift
//  RoboChef
//
//  Created by Alex Pallozzi on 5/8/23.
//

import SwiftUI

struct Login: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State var isLinkActive = false
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    VStack {
                        ZStack {
                            Ellipse().frame(width: 510, height: 478)
                                .padding(.leading, -200)
                                .foregroundColor(Color("color2"))
                                .padding(.top, -175);
                            
                            Ellipse().frame(width: 458, height: 420)
                                .padding(.trailing, -450)
                                .foregroundColor(Color("color3"))
                                .padding(.top, -225);
                            
                            Text("Welcome \nBack to \n")
                                .foregroundColor(.white)
                                .font(.system(size: 36))
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.trailing, 100)
                                .padding(.leading, 20)
                                .padding(.top, -100)
                            Text("RoboChef")
                                .foregroundColor(.black)
                                .font(.system(size: 40))
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.trailing, 100)
                                .padding(.leading, 20)
                                .padding(.top, -15)
                            Text("A One-Stop Shopping Assistant")
                                .foregroundColor(.white)
                                .font(.system(size: 27))
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 270)
                                .padding(.top, -150)
                        }

                        VStack(spacing: 30) {
                            VStack(spacing: 20){
                                CustomTextField(placeHolder: "Username", imageName: "envelope", bColor: "textColor1", tOpacity: 0.6, value: $username).padding(.top, 20)
                                CustomTextField(placeHolder: "Password", imageName: "lock", bColor: "textColor1", tOpacity: 0.6, value: $password)
                            }
                            
                            VStack(alignment: .trailing) {
                                Button(action: {}, label: {
                                    Text("Forgot Password?")
                                        .fontWeight(.bold).padding(.bottom, 20)
                                        .font(.system(size: 18))
                                        .foregroundColor(.black)
                                })
                                
                                Button(action: {}, label: {
                                    CustomButton(title: "Sign In", bgColor: "color3");
                                })
                            }.padding(.horizontal, 20)
                            
                            HStack(spacing: 20) {
                                Button(action: {}, label: {
                                    Image("fb")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .padding(.horizontal, 75)
                                        .padding(.vertical, 15)
                                        .background(Color("color3"))
                                        .cornerRadius(15)
                                })
                                
                                Button(action: {}, label: {
                                    Image("insta")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .padding(.horizontal, 75)
                                        .padding(.vertical, 15)
                                        .background(Color("color3"))
                                        .cornerRadius(15)
                                })
                            }
                            
                            Spacer()
                            
                            HStack {
                                Text("Don't Have an Account?")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .font(.system(size: 18));
                                NavigationLink(destination: Signup(), isActive: $isLinkActive) {
                                    Button(action: {
                                        self.isLinkActive = true
                                    }, label: {
                                        Text("SIGN UP")
                                            .font(.system(size: 18))
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                    })
                                }
                            }
                            .frame(height: 63)
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .background(Color("color2"))
                        }
                    }
                }
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
//
//extension UINavigationController {
//    open override func viewWillLayoutSubviews() {
//        navigationBar.topItem?.backButtonDisplayMode = .minimal
//    }
//}
