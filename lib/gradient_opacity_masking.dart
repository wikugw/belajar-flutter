import 'package:flutter/material.dart';

class GradientOpacityMasking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gradient Opacity Masking'),
      ),
      body: Center(
        child: ShaderMask(
          shaderCallback: (rectangle){
            return LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
            ).createShader(Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
          },
          blendMode: BlendMode.dstIn,
          child: Image(
            width: 300,
            image: NetworkImage(
              'https://images.unsplash.com/photo-1585399000684-d2f72660f092?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1502&q=80'
            ),
          ),
        ),
      ),
    );
  }
}