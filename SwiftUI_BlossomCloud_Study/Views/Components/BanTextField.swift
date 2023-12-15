//
//  BanTextField.swift
//  SwiftUI_BlossomCloud_Study
//
//  Created by sumwb on 12/14/23.
//

import SwiftUI

struct BanTextField: View {
  @State var value: String = ""
  @FocusState private var isFocused: Bool
  
  var title: String
  var placeholder: String
  
  var body: some View {
    VStack(alignment: .leading, spacing: 0) {
      
      Text(title)
        .foregroundColor(Color(hex: "8d8d8d"))
        .font(.system(size: 14))
      
      TextField(placeholder, text: $value, prompt: Text(placeholder).foregroundColor(Color(hex: "c6c6c6")))
        .focused($isFocused)
    }
    .padding(.init(top: 8, leading: 16, bottom: 8, trailing: 16))
    .background(
      RoundedRectangle(cornerRadius: 20)
        .stroke(isFocused ? Color.white : Color(hex: "242424"), lineWidth: 2)
        .background(Color(hex: "242424")) // 내부 색상
    )
    .cornerRadius(20)
    .frame(height: 64)
  }
}

#Preview {
    BanTextField(title: "아이디", placeholder: "이메일")
}
