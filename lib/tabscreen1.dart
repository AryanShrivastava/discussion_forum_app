import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:onthego/homecards/deptcards.dart';


class TabPage1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _TabScreen1();
}

class _TabScreen1 extends State<TabPage1> {
  @override
  int currentPage = 0;
  Widget imageCarousel = new Container(
    height: 220.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        NetworkImage(
            'https://shoptimized.net/wp-content/uploads/2020/02/testimonials-980x588.jpg'),
        NetworkImage(
            'https://i2.wp.com/blog.apnacomplex.com/wp-content/uploads/2015/04/discussion-forum.jpg'),
        NetworkImage(
            'https://suitedash.com/wp/wp-content/uploads/2019/05/liveChate.png'),
        NetworkImage(
            'https://images.tmcnet.com/tmc/misc/articles/image/2018-dec/2831286387-bigstock-customer-service-contact-center-SUPERSIZE.jpg'),
        /*NetworkImage(
            'https://images.unsplash.com/photo-1541534741688-6078c6bfb5c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
        NetworkImage(
            'https://printmeposter.com/blog/wp-content/uploads/2016/03/Motivational-Fitness-Poster-680x510.jpg'),*/
      ],
      showIndicator: false,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
    ),
  );

  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new Scaffold(
        backgroundColor: Colors.white70,
        body: new ListView(
            padding:
                EdgeInsets.only(left: 2.0, top: 10.0, right: 2.0, bottom: 10.0),
            children: <Widget>[
              imageCarousel,
              SizedBox(height: 10),
              HomeCard(),
            ]),
      ),
    );
  }
}
