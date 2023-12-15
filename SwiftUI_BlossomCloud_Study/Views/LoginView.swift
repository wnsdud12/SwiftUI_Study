//
//  LoginView.swift
//  SwiftUI_BlossomCloud_Study
//
//  Created by sumwb on 12/14/23.
//

import SwiftUI

struct LoginView: View {
  @State var email: String = ""
  
  @State var loginButtonType: ButtonType = .pressed
    var body: some View {
       
        VStack {
          Image("logo")
            .padding(.init(top: 40, leading: 0, bottom: 40, trailing: 0))
          
          BanTextField(title: "아이디", placeholder: "이메일")
          BanTextField(title: "비밀번호", placeholder: "8~12자, 영문/숫자/특수문자 중 2가지 이상")
          
          HStack(spacing: 24) {
            Button("아이디 찾기") {
              print("touch 아이디찾기")
            }
            .font(.system(size: 12))
            .foregroundColor(Color(hex: "C6C6C6"))
            .opacity(0.8)
            
            Divider()
              .background(Color(hex: "C6C6C6"))
              .padding(.init(top: 6, leading: 0, bottom: 6, trailing: 0))
            
            Button("비밀번호 찾기") {
              print("touch 비밀번호찾기")
            }
            .font(.system(size: 12))
            .foregroundColor(Color(hex: "C6C6C6"))
            .opacity(0.8)
            
            Divider()
              .background(Color(hex: "C6C6C6"))
              .padding(.init(top: 6, leading: 0, bottom: 6, trailing: 0))
            
            Button("회원가입") {
              print("touch 회원가입")
            }
            .font(.system(size: 12))
            .foregroundColor(Color(hex: "C6C6C6"))
            .opacity(0.8)

          }
          .frame(height: 24)
          .padding(.init(top: 70, leading: 0, bottom: 0, trailing: 0))

          HStack(spacing: 13) {
            VStack {
              Divider()
                .background(Color(hex: "C6C6C6"))
            }
            
            Text("SNS 계정으로 로그인")
              .font(.system(size: 12))
              .foregroundColor(Color(hex: "c6c6c6"))
            
            VStack {
              Divider()
                .background(Color(hex: "C6C6C6"))
            }
          }
          .padding(.init(top: 24, leading: 0, bottom: 0, trailing: 0))
          
          
          HStack(spacing: 24) {
            Button(action: {
              
            }, label: {
              Image("img_logo_login_kakao")
            })
            
            Button(action: {
              
            }, label: {
              Image("img_logo_login_naver")
            })
            
            Button(action: {
              
            }, label: {
              Image("img_logo_login_apple")
            })
            
            Button(action: {
              
            }, label: {
              Image("img_logo_login_google")
            })
            
          }
          .padding(.init(top: 24, leading: 0, bottom: 0, trailing: 0))
          
          Spacer()
          
          BanButton(buttonType: loginButtonType, title: "로그인") {
            print("touch 로그인")
            self.loginButtonType = .default
          }
        }
        .padding(.init(top: 0, leading: 24, bottom: 0, trailing: 24))
    }
}

#Preview {
    LoginView()
    .background(Color.black)
    .previewLayout(.fixed(width: 300, height: 40))
}
