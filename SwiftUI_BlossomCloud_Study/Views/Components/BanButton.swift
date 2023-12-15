//
//  BanButton.swift
//  SwiftUI_BlossomCloud_Study
//
//  Created by sumwb on 12/15/23.
//

import SwiftUI

enum ButtonType {
  case `default`, pressed, disabled
}
struct BanButton: View {
  @State var buttonType: ButtonType
  
  var title: String
  var action: () -> Void
  var body: some View {
      
      Button(action: action) {
        // 버튼 내용
        HStack {
          Spacer()
          Text(title)
            .foregroundColor(getButtonTitleColor($buttonType))
          Spacer()
        }
        .frame(height: 40)
      }
      .buttonStyle(BanButtonStyle(buttonType: $buttonType))
  }
  func getButtonTitleColor(_ buttonType: Binding<ButtonType>) -> Color {
    switch buttonType.wrappedValue {
      
    case .default:
      return Color.white
    case .pressed:
      return Color.black
    case .disabled:
      return Color.black
    }
  }
}

struct BanButtonStyle: ButtonStyle {
  var buttonType: Binding<ButtonType>
  
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .foregroundColor(Color.white)
      .background(Capsule().fill(getBackgroundColor(buttonType: buttonType)))
      .border(Color(hex: "c6c6c6"))
      .frame(width: .infinity, height: 40)
  }
  
  func getBackgroundColor(buttonType: Binding<ButtonType>) -> Color {
    switch buttonType.wrappedValue {
    case .default:
      return .clear
    case .pressed:
      return .white
    case .disabled:
      return .init(hex: "8d8d8d")
    }
  }
}

#Preview {
  BanButton(buttonType: .disabled, title: "로그인하기") {
    
  }
}
