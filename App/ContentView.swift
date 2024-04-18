//#-learning-task(contentView)
import SwiftUI
/*#-code-walkthrough(struct)*/

struct ContentView: View {
    /*#-code-walkthrough(variables)*/
    /*#-code-walkthrough(state)*/
    @State private var textField: String = ""
    @State private var question: String = ""
    @State private var answer: String = "Ask me a question"
    /*#-code-walkthrough(state)*/
    /*#-code-walkthrough(answersArray)*/
    /*#-code-walkthrough(answersArray2)*/
    private var answers = ["Without a doubt"]
    /*#-code-walkthrough(answersArray)*/
    /*#-code-walkthrough(answersArray2)*/
    /*#-code-walkthrough(variables)*/
    
    var body: some View {
        
        VStack {
            
            /*#-code-walkthrough(text)*/
            Text("Magic 8 Ball")
            /*#-code-walkthrough(text)*/
            //#-learning-code-snippet(largeTitle)
            //#-learning-code-snippet(bold)
            /*#-code-walkthrough(zstack)*/
            //#-learning-code-snippet(shadowFont)
            //#-learning-code-snippet(shadow)
            //#-learning-code-snippet(titleGradient)
            ZStack {
                Image("magic8Ball")
                /*#-code-walkthrough(resizable)*/
                    .resizable()
                /*#-code-walkthrough(resizable)*/
                Text(answer)
                    .foregroundColor(.white)
            }
            /*#-code-walkthrough(frameSize)*/
            .frame(width: 300, height: 300)
            /*#-code-walkthrough(frameSize)*/
            /*#-code-walkthrough(zstack)*/
            //#-learning-code-snippet(textPadding)
            /*#-code-walkthrough(bottomstack)*/
            VStack {
                /*#-code-walkthrough(label)*/
                Text(question)
                /*#-code-walkthrough(label)*/
                /*#-code-walkthrough(placeholdertext)*/
                /*#-code-walkthrough(binding)*/
                TextField("Enter your question", text: $textField)
                /*#-code-walkthrough(placeholdertext)*/
                /*#-code-walkthrough(binding)*/
                    .font(.title)
                    .frame(width: 400, alignment: .center)
                    .textFieldStyle(.roundedBorder)
                /*#-code-walkthrough(button)*/
                Button(action: {
                    //#-learning-code-snippet(questionText)
                    //#-learning-code-snippet(random)
                    //#-learning-code-snippet(reset)
                }, label:  {
                    Text("Submit your question")
                })
                //#-learning-code-snippet(customButton)
                //#-learning-code-snippet(frameMod)
                //#-learning-code-snippet(buttonBackground)
                /*#-code-walkthrough(button)*/
                //#-learning-code-snippet(textFieldPadding)
            }
            /*#-code-walkthrough(bottomstack)*/
        }
        /*#-code-walkthrough(location)*/
        //#-learning-code-snippet(frame)
        //#-learning-code-snippet(background)
        //#-learning-code-snippet(bgGradient)
    }
}
/*#-code-walkthrough(struct)*/
