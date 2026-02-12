//  ContentView.swift

//  WordGarden

//

//  Created by VICUNA, BRANDON on 1/12/26.

//



import SwiftUI



struct ContentView: View {

    @State private var wordsguessed = 0

    @State private var wordsMissed = 0

    @State private var wordsToGuess = ["SWIFT", "DOG", "CAT"] // All Caps

    @State private var gameStatusMessage = "How Many Guesses to Uncover the Hidden Word?"

    @State private var currentWord = 0 // index in wordsToGuess

    @State private var guessedLetter = ""

    @State private var imageName = "flower8"

    @State private var playagainHidden = true

    

    var body: some View {

        VStack {

            

            HStack{

                    VStack (alignment: .leading) {

                        Text("Words Guessed: \(wordsguessed)")

                        Text("Words Missed: \(wordsMissed)")

                        }

                    Spacer()

                    VStack (alignment: .trailing){

                        Text("Words Guess: \(wordsToGuess.count-(wordsguessed + wordsMissed))")

                        Text("Words Game: \(wordsToGuess.count)")

                        }

            }

            .padding(.horizontal)

            

            Spacer()

            Text(gameStatusMessage)

                .font(.title)

                .multilineTextAlignment(.center)

                .padding()

            

            //TODO: Switch to wordsToGuess [currentWord]

            Text("- - - - -")

                .font(.title)

            

            if playagainHidden{

                

                

                HStack{

                    TextField("", text: $guessedLetter)

                        .textFieldStyle(.roundedBorder)

                        .frame(width: 30)

                        .overlay {

                            RoundedRectangle(cornerRadius: 5)

                                .stroke(.gray, lineWidth: 2)

                        }

                    

                    

                    Button("Guess a Letter:") {

                        //TODO: Guess a Letter Button acion here

                        playagainHidden = false

                    }

                    .buttonStyle(.borderedProminent)

                    .tint(.mint)

                }

            } else {

                Button("Another Word?") {

                //TODO: Another Word Button Action Here

                    playagainHidden = true

            }

            .buttonStyle(.borderedProminent)

            .tint(.mint)

            }

            

            

            Spacer()

            Image(imageName)

                .resizable()

                .scaledToFit()

            

            }

        .ignoresSafeArea(edges: .bottom)

        }

    }

        #Preview {

            ContentView()

        }
