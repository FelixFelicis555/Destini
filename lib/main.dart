import 'package:flutter/material.dart';
import 'package:destini/story_brain.dart';

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyBrain.getStory(),
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Visibility(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          nextStory(1);
                        });
                      },
                      style: TextButton.styleFrom(backgroundColor: Colors.red),
                      child: Text(
                        storyBrain.getChoice1(),
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                  flex: 2,
                  child: Visibility(
                    visible: storyBrain.shouldBeVisible(),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          nextStory(2);
                        });
                      },
                      style: TextButton.styleFrom(backgroundColor: Colors.blue),
                      child: Text(
                        storyBrain.getChoice2(),
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

/*

    ! Boss-Challenge : 

   In this app,we apply Oops concepts Of Dart 


    * This is a kind of app,where you have some part of story and you will decide what would happen next by choosing choices(1 or 2),Depending on your s
    * choice rest of the story unfolds

  ? What You'll Make :
  
    There will be a story,after that we had 2 choices depending on which choice user  would choose,story unfolds in different ways

 * We also let the user to play this app again

 In order to complete this challenge,we set a whole bunch of TODO's for you inside starter file 
*/