//
//  CalculatorButton.swift
//  Calculator
//
//  Created by Sarah Clark on 2/26/25.
//

import SwiftUI

struct CalculatorButton: View {
    let title: String
    let action: () -> Void

    private var isOperation: Bool {
        ["÷", "×", "−", "+", "="].contains(title)
    }

    private var backgroundColor: Color {
        switch title {
        case "AC": return .gray
        case "÷", "×", "−", "+", "=": return .blue.opacity(0.8)
        default: return .blue.opacity(0.3)
        }
    }

    private var textColor: Color {
        title == "AC" ? .white : .primary
    }

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .foregroundColor(textColor)
                .frame(width: 80, height: 80)
                .background(backgroundColor)
                .cornerRadius(40)
        }
    }
}

// MARK: Previews
#Preview("Light Mode") {
    CalculatorButton(title: "1", action: { print("Button pressed") })
        .preferredColorScheme(.light)
}

#Preview("Dark Mode") {
    CalculatorButton(title: "1", action: { print("Button pressed") })
        .preferredColorScheme(.dark)
}
