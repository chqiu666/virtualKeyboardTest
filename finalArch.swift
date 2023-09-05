import SwiftUI

struct ContentView: View {
    @State private var inputText: String = ""
    @State private var randomChars: String = String((0..<20).compactMap { _ in "■□●○♥♡▲△◉◎◒◈⬌⬄◬★⛤☾☻⬟⬠⛊⚐⚑♠Ω".randomElement() })
    @State private var buttonPressCount = 0
    @State private var startTime: Date? = nil
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    var body: some View {
        VStack() {
            Text(randomChars)  // Display the 20 random characters
                .font(.title)
                .padding()
            VStack{
                TextField("Enter text", text: $inputText)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .onChange(of: inputText, perform: { value in
                startTimerAndCountPresses()
            })
            
            // Your existing custom keyboard UI code
         //   VStack() {
                
                
            
                HStack{
                    VStack{
                        HStack {
                            KeyButton(title: "\u{25A0}", action: { appendCharacter("\u{25A0}") })
                                .rotationEffect(.degrees(6), anchor: .center)
                                .offset(x: -3, y: -80)
                            KeyButton(title: "\u{25A1}", action: { appendCharacter("\u{25A1}") })
                                .rotationEffect(.degrees(18), anchor: .center)
                                .offset(x: -3, y: -60)
                            KeyButton(title: "\u{25CF}", action: { appendCharacter("\u{25CF}") })
                                .rotationEffect(.degrees(30), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: -3, y: -18)
                            KeyButton(title: "\u{25CB}", action: { appendCharacter("\u{25CB}") })
                                .rotationEffect(.degrees(42), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: -16, y: 40)
                            KeyButton(title: "\u{2665}", action: { appendCharacter("\u{2665}") })
                                .rotationEffect(.degrees(54), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: -40, y: 120)
                            
                        }
                        
                        HStack {
                            KeyButton(title: "\u{25D2}", action: { appendCharacter("\u{25D2}") })
                                .rotationEffect(.degrees(8), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: -10, y: -74)
                            KeyButton(title: "\u{25C8}", action: { appendCharacter("\u{25C8}") })
                                .rotationEffect(.degrees(22), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: -10, y: -50)
                            KeyButton(title: "\u{2B0C}", action: { appendCharacter("\u{2B0C}") })
                                .rotationEffect(.degrees(36), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: -22, y: 0)
                            KeyButton(title: "\u{2B04}", action: { appendCharacter("\u{2B04}") })
                                .rotationEffect(.degrees(50), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: -44, y: 62)
                            KeyButton(title: "\u{03A9}", action: { appendCharacter("\u{03A9}") })
                                .rotationEffect(.degrees(64), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: -82, y: 138)
                        }
                        
                        
                        HStack {
                            KeyButton(title: "\u{2B1F}", action: { appendCharacter("\u{2B1F}") })
                                .rotationEffect(.degrees(8), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: -110, y: -70)
                            KeyButton(title: "\u{2B20}", action: { appendCharacter("\u{2B20}") })
                                .rotationEffect(.degrees(26), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: -110, y: -42)
                            KeyButton(title: "\u{26CA}", action: { appendCharacter("\u{26CA}") })
                                .rotationEffect(.degrees(54), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: -124, y: 20)
                        }         
                    }
                    .frame(width: 500, height: 340, alignment:.leading)
                    .border(Color.blue)
                    .rotationEffect(.degrees(0), anchor: .bottom)
                    .offset(x: -40,y: 80)
                    HStack {
                        
                    }
                    
                    VStack{
                        HStack {
                            KeyButton(title: "\u{2661}", action: { appendCharacter("\u{2661}") })
                                .rotationEffect(.degrees(-54), anchor: .center)
                                .offset(x: 40, y: 120)
                            KeyButton(title: "\u{25B2}", action: { appendCharacter("\u{25B2}") })
                                .rotationEffect(.degrees(-42), anchor: .center)
                                .offset(x: 16, y: 40)
                            KeyButton(title: "\u{25B3}", action: { appendCharacter("\u{25B3}") })
                                .rotationEffect(.degrees(-30), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: 3, y: -18)
                            KeyButton(title: "\u{25C9}", action: { appendCharacter("\u{25C9}") })
                                .rotationEffect(.degrees(-18), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: 3, y: -60)
                            KeyButton(title: "\u{25CE}", action: { appendCharacter("\u{25CE}") })
                                .rotationEffect(.degrees(-6), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: 3, y: -80)
                        }
                        
                        HStack {
                            KeyButton(title: "\u{25EC}", action: { appendCharacter("\u{25EC}") })
                                .rotationEffect(.degrees(-64), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: 82, y: 138)
                            KeyButton(title: "\u{2605}", action: { appendCharacter("\u{2605}") })
                                .rotationEffect(.degrees(-50), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: 44, y: 62)
                            KeyButton(title: "\u{26E4}", action: { appendCharacter("\u{26E4}") })
                                .rotationEffect(.degrees(-36), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: 22, y: 0)
                            KeyButton(title: "\u{263E}", action: { appendCharacter("\u{263E}") })
                                .rotationEffect(.degrees(-22), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: 10, y: -50)
                            KeyButton(title: "\u{263B}", action: { appendCharacter("\u{263B}") })
                                .rotationEffect(.degrees(-8), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: 10, y: -74)
                        }
                        
                        
                        HStack {
                            KeyButton(title: "\u{2690}", action: { appendCharacter("\u{2690}") })
                                .rotationEffect(.degrees(-54), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: 124, y: 20)
                            KeyButton(title: "\u{2691}", action: { appendCharacter("\u{2691}") })
                                .rotationEffect(.degrees(-26), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: 110, y: -42)
                            KeyButton(title: "\u{2660}", action: { appendCharacter("\u{2660}") })
                                .rotationEffect(.degrees(-8), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: 110, y: -70)
                        }         
                    }
                    .frame(width: 500, height: 340, alignment:.trailing)
                    .border(Color.blue)
                    .rotationEffect(.degrees(0), anchor: .bottom)
                    .offset(x: 40,y: 80)
                    HStack {
                        
                    }
                    
                }
                
            }
            .frame(width: 1000, height: 560, alignment: .bottom)
            .border(Color.red)
     //   }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Results"), message: Text(alertMessage), dismissButton: .default(Text("Confirm")) {
                inputText = ""
            })
        }
        .frame(width: 1000, height: 560, alignment: .bottom)
        .border(Color.red)
    }
    func appendCharacter(_ char: String) {
        inputText += char
        startTimerAndCountPresses()
    }
    func levenshteinDistance(_ a: String, _ b: String) -> Int {
            let (a, b) = (Array(a), Array(b))
            var distance = [[Int]]()
            for _ in 0...a.count {
                    distance.append([Int](repeating: 0, count: b.count + 1))
                }
            
            for i in 0...a.count {
                    distance[i][0] = i
                }
            for j in 0...b.count {
                    distance[0][j] = j
                }
            
            for i in 1...a.count {
                    for j in 1...b.count {
                            distance[i][j] = min(
                                    distance[i-1][j] + 1,
                                    distance[i][j-1] + 1,
                                    distance[i-1][j-1] + (a[i-1] == b[j-1] ? 0 : 1)
                                )
                        }
                }
            return distance[a.count][b.count]
    }
    
    func startTimerAndCountPresses() {
            if startTime == nil && inputText.count == 1 {
                    startTime = Date()
                }
            
            if inputText.count == 20 {
                    if let start = startTime {
                            let elapsedTime = Date().timeIntervalSince(start)
                            let roundedTime = Double(String(format: "%.3f", elapsedTime)) ?? elapsedTime
                            let correctCount = zip(inputText.prefix(20), randomChars).filter { $0 == $1 }.count
                            let accuracy = Double(correctCount) / 20.0 * 100
                            let levenshteinAccuracy = 100 - Double(levenshteinDistance(inputText, String(randomChars))) / 20.0 * 100
                            
                            alertMessage = "Time elapsed: \(roundedTime) seconds\nAccuracy: \(accuracy)%\nLevenshtein Accuracy: \(levenshteinAccuracy)%"
                            showAlert = true
                        }
                    
                    // Reset
                    startTime = nil
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            if self.showAlert == false {
                                    self.inputText = ""
                                }
                        }
                }
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

