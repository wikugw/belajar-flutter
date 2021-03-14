import 'package:flutter/material.dart';

class ClippathPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clippath page'),
      ),
      body: Center(
        child: ClipPath(
          clipper: MyClipper(),
          child: Image(
            width: 300,
            image: NetworkImage(
              'https://images.unsplash.com/photo-1593642702749-b7d2a804fbcf?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80'
            )
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
      Path path = Path();

      path.lineTo(0, size.height);
      path.quadraticBezierTo(size.width / 2, size.height * 0.75, size.width, size.height);
      path.lineTo(size.width, 0);
      path.close();

      return path;
    }
  
    @override
    bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}