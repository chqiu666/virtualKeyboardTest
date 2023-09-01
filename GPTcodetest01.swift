import SwiftUI

struct ContentView: View {
    @State private var inputText: String = ""
    
    var body: some View {
        VStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 14){
            TextField("Enter text", text: $inputText)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            HStack {
                KeyButton(title: "\u{25A0}", action: { appendCharacter("\u{25A0}") })
                KeyButton(title: "\u{25A1}", action: { appendCharacter("\u{25A1}") })
                KeyButton(title: "\u{25CF}", action: { appendCharacter("\u{25CF}") })
                KeyButton(title: "\u{25CB}", action: { appendCharacter("\u{25CB}") })
                KeyButton(title: "\u{2665}", action: { appendCharacter("\u{2665}") })
                KeyButton(title: "\u{2661}", action: { appendCharacter("\u{2661}") })
                KeyButton(title: "\u{25B2}", action: { appendCharacter("\u{25B2}") })
                KeyButton(title: "\u{25B3}", action: { appendCharacter("\u{25B3}") })
                KeyButton(title: "\u{25C9}", action: { appendCharacter("\u{25C9}") })
                KeyButton(title: "\u{25CE}", action: { appendCharacter("\u{25CE}") })         
                
            }
            
            HStack {
                KeyButton(title: "\u{25D2}", action: { appendCharacter("\u{25D2}") })
                KeyButton(title: "\u{25C8}", action: { appendCharacter("\u{25C8}") })
                KeyButton(title: "\u{2B0C}", action: { appendCharacter("\u{2B0C}") })
                KeyButton(title: "\u{2B04}", action: { appendCharacter("\u{2B04}") })
                KeyButton(title: "\u{25EC}", action: { appendCharacter("\u{25EC}") })
                KeyButton(title: "\u{2605}", action: { appendCharacter("\u{2605}") })
                KeyButton(title: "\u{26E4}", action: { appendCharacter("\u{26E4}") })
                KeyButton(title: "\u{263E}", action: { appendCharacter("\u{263E}") })
                KeyButton(title: "\u{263B}", action: { appendCharacter("\u{263B}") })
                
            }
            
            HStack {
                KeyButton(title: "\u{2B1F}", action: { appendCharacter("\u{2B1F}") })
                KeyButton(title: "\u{2B20}", action: { appendCharacter("\u{2B20}") })
                KeyButton(title: "\u{26CA}", action: { appendCharacter("\u{26CA}") })
                KeyButton(title: "\u{2690}", action: { appendCharacter("\u{2690}") })
                KeyButton(title: "\u{2691}", action: { appendCharacter("\u{2691}") })
                KeyButton(title: "\u{2660}", action: { appendCharacter("\u{2660}") })
                KeyButton(title: "\u{03A9}", action: { appendCharacter("\u{03A9}") })
            }
            
            HStack {
                
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
                .frame(width: 85, height: 80)
                
                .background(Color.gray)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}
