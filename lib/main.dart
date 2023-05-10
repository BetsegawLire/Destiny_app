import 'package:flutter/material.dart';
import './story_brain.dart';

StoryBrain storyBrain = StoryBrain();

void main() {
  runApp(Destiny());
}

class Destiny extends StatelessWidget {
  const Destiny({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.png'), fit: BoxFit.cover)),
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 15),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    // "Story text will go here",
                    storyBrain.getStory(),
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.red,
                  child: TextButton(
                    onPressed: () {
                      // step 18
                      setState(() {
                        storyBrain.nextStory(1);
                      });
                    },
                    child: Text(
                      // 'Choice 1',
                      // step 13
                      storyBrain.getChoice1(),
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 2,
                // step 26
                child: Visibility(
                  // step 28
                  visible: storyBrain.buttonShouldBeVisible(),
                  child: Container(
                    color: Colors.blue,
                    child: TextButton(
                      onPressed: () {
                        // step 19
                        setState(() {
                          storyBrain.nextStory(2);
                        });
                      },
                      child: Text(
                        // 'Choice 2',
                        // step 14
                        storyBrain.getChoice2(),
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
