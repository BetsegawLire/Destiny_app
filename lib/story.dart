import 'package:flutter/material.dart';

class Story {
  late String storyTitle;
  late String choice1;
  late String choice2;

  Story(
      {required String choice1,
      required String choice2,
      required String storyTitle}) {
    this.storyTitle = storyTitle;
    this.choice2 = choice2;
    this.choice1 = choice1;
  }
}
