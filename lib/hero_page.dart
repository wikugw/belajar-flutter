import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: Text('Hero Animation'),
        backgroundColor: Colors.black,
      ),
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return ImagePage();
          }));
        },
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 100,
              height: 100,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://scontent-sin6-2.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/155513066_420851929018866_1488679445749097006_n.jpg?tp=1&_nc_ht=scontent-sin6-2.cdninstagram.com&_nc_cat=1&_nc_ohc=arrUyD7t_3wAX94VldZ&oh=be34d507bc540944601a6e6970fc932e&oe=606B16B3'
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text('Hero Animation'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: 200,
              height: 200,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://scontent-sin6-2.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/155513066_420851929018866_1488679445749097006_n.jpg?tp=1&_nc_ht=scontent-sin6-2.cdninstagram.com&_nc_cat=1&_nc_ohc=arrUyD7t_3wAX94VldZ&oh=be34d507bc540944601a6e6970fc932e&oe=606B16B3'
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}