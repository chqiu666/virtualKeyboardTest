import SwiftUI

struct ContentView: View {
    @State private var inputText: String = ""

    var body: some View {
        VStack {
            TextField("Enter text", text: $inputText)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            HStack {
                KeyButton(title: "Q", action: { appendCharacter("Q") })
                KeyButton(title: "W", action: { appendCharacter("W") })
                KeyButton(title: "E", action: { appendCharacter("E") })
            }

            HStack {
                KeyButton(title: "A", action: { appendCharacter("A") })
                KeyButton(title: "S", action: { appendCharacter("S") })
                KeyButton(title: "D", action: { appendCharacter("D") })
            }

            HStack {
                KeyButton(title: "Z", action: { appendCharacter("Z") })
                KeyButton(title: "X", action: { appendCharacter("X") })
                KeyButton(title: "C", action: { appendCharacter("C") })
            }
        }
    }

    func appendCharacter(_ char: String) {
        inputText += char
    }
}

struct KeyButton: View {
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .frame(width: 50, height: 50)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}