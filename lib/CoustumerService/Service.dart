import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class Service extends StatefulWidget {
  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  var pinned = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () {}),
            brightness: Brightness.dark,
            backgroundColor: Color.fromRGBO(104, 159, 57, 1),
            title: Text('Customer Service'),
            centerTitle: true,
            floating: true,
            snap: true,
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: ClipPath(
              clipper: CurvClipper(),
              child: Container(
                padding: EdgeInsets.only(top: 35),
                height: 130,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue[400],
                child: Column(
                  children: [
                    Text(
                      'Login to see ad manage all your orders',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Colors.white)),
                        child: Text(
                          'LOGIN',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(left: 10,right: 10,top: 10),
              child: FlatButton.icon(
                color: Colors.white,
                onPressed: () {},
                icon: Icon(Icons.search,color: Colors.black54,),
                label: Text('Search a question',style: TextStyle(
                  color: Colors.black54,

                ),),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    // side: BorderSide(color: Colors.red)
                    ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 15),
              child: Text(
                'Popular Topic',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 320,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Wrap(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    child: Column(
                      children: [
                        Container(
                          height: 45,
                          child: Image.asset(
                            'assets/images/basket1.png',
                            height: 40,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'My Orders',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 20),
                    child: Column(
                      children: [
                        Container(
                          height: 45,
                          child: Badge(
                            // padding: EdgeInsets.all(8),
                            badgeColor: Color.fromRGBO(134, 158, 175, 1),
                            badgeContent: Icon(
                              Icons.rotate_left,
                              color: Colors.white,
                              size: 18,
                            ),
                            child: Image.asset(
                              'assets/images/basket1.png',
                              height: 40,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Return / Exchange',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    child: Column(
                      children: [
                        Container(
                          height: 45,
                          child: Badge(
                            alignment: Alignment.topLeft,
                            badgeColor: Color.fromRGBO(134, 158, 175, 1),
                            badgeContent: Icon(
                              Icons.attach_money,
                              color: Colors.white,
                              size: 18,
                            ),
                            child: Image.asset(
                              'assets/images/voucher.jpeg',
                              height: 40,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Payment & Voucher',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 30),
                    child: Column(
                      children: [
                        Container(
                          height: 45,
                          child: Badge(
                            alignment: Alignment.topLeft,
                            badgeColor: Color.fromRGBO(134, 158, 175, 1),
                            badgeContent: Icon(
                              Icons.settings,
                              color: Colors.white,
                              size: 18,
                            ),
                            child: Image.asset(
                              'assets/images/account.jpeg',
                              height: 40,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'My Accont',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 30),
                    child: Column(
                      children: [
                        Container(
                          height: 45,
                          child: Image.asset(
                            'assets/images/repor.jpg',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Report an Issue',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 30),
                    child: Column(
                      children: [
                        Container(
                          height: 45,
                          child: Icon(
                            Icons.help_outline,
                            size: 39,
                            color: Color.fromRGBO(134, 158, 175, 1),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'General Queries',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 30),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(134, 158, 175, 1),
                                  width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          height: 45,
                          child: Image.asset(
                            'assets/images/bbstar.jpg',
                            height: 40,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'bbstar Queries',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Text(
                'Popular Searches',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Column(
                children: [
                  Container(
                    height: 44,
                    padding: EdgeInsets.only(left: 8, right: 8, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'I am not happy with quality of product',
                          style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey[400],
                          size: 19,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    endIndent: 25,
                    color: Colors.black45,
                  ),
                  Container(
                    height: 44,
                    padding: EdgeInsets.only(left: 8, right: 8, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'I am unableto log in / sign up',
                          style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey[400],
                          size: 19,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    endIndent: 25,
                    color: Colors.black45,
                  ),
                  Container(
                    height: 44,
                    padding: EdgeInsets.only(left: 8, right: 8, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'I want to change thr delivery slot',
                          style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey[400],
                          size: 19,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    endIndent: 25,
                    color: Colors.black45,
                  ),
                  Container(
                    height: 44,
                    padding: EdgeInsets.only(left: 8, right: 8, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'I want to contact customer service',
                          style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey[400],
                          size: 19,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('tapped show more');
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Text(
                            'Show more',
                            style: TextStyle(
                                color: Color.fromRGBO(156, 198, 210, 1)),
                          ),
                          Icon(Icons.arrow_drop_down,
                              color: Color.fromRGBO(156, 198, 210, 1)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CurvClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 25);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);

    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 25);

    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
