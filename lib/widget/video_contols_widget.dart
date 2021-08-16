import 'package:firebase_firestoreapp/model/exercise.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoControlsWidget extends StatelessWidget {
  final Exercise exercise;
  final VoidCallback onRewindVideo;
  final VoidCallback onNextVideo;
  final ValueChanged<bool> onTogglePlaying;

  const VideoControlsWidget({
    @required this.exercise,
    @required this.onRewindVideo,
    @required this.onNextVideo,
    @required this.onTogglePlaying,
  });

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white.withOpacity(0.95)),
        height: 142,
      );
  Widget buildButtons(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(
              Icons.fast_rewind,
              color: Colors.black87,
              size: 32,
            ),
            onPressed: onRewindVideo,
          ),
          buildPlayButton(context),
          IconButton(
            icon: Icon(
              Icons.fast_forward,
              color: Colors.black87,
              size: 32,
            ),
            onPressed: onNextVideo,
          )
        ],
      );

  Widget buildPlayButton(BuildContext context) {
    // final isloading =
    // exercise.controller ==null ||!exercise.controller.value.
    // if (exercise.controller.value.isPlaying){
    //   return buildButton(context, icon:Icon(Icons.pause,size:30,color: Colors.white), onClicked: ()=>onTogglePlaying(false),);
    //  }
    //   else{
    //     return buildButton(context, icon:Icon(Icons.play_arrow,size:30,color: Colors.white), onClicked: ()=>onTogglePlaying(true),);
    //  }
    // }
  }
  Widget buildButton(
    BuildContext context, {
    @required Widget icon,
    @required VoidCallback onClicked,
  }) =>
      GestureDetector(
        onTap: onClicked,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Color(0xFFff6369),
                blurRadius: 8,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: CircleAvatar(
            radius: 24,
            backgroundColor: Color(0xFFff6369),
            child: icon,
          ),
        ),
      );
}
