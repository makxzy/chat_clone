import 'package:chat_app/pages/chats_view.dart';
import 'package:chat_app/pages/home_view.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      showDoneButton: true,
      showNextButton: true,
      showSkipButton: true,
      skip: Text('Skip'),
      done: Text('Done'),
      next: Text('Next'),
      onDone: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>HomeView()));
      },

      pages: [
        PageViewModel(
          title: 'Welcome',
          body: 'The new revolution chat App is here',
          image: Lottie.asset('assets/images/1.json')
        ),

         PageViewModel(
          title: 'Welcome',
          body: 'Your loved ones are much closer to you NOW!',
           image: Lottie.asset('assets/images/2.json')
        ),
      ],
      
    );
  }
}