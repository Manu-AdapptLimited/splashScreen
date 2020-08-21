import 'package:flutter/material.dart';
import 'package:splash_screen/SmartBasket/Widget/AppsBar.dart';

class Faq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            snap: true,
            brightness: Brightness.light,
            backgroundColor: Color.fromRGBO(104, 159, 57, 1),
            centerTitle: true,
            elevation: 0.0,
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 25,
                ),
                onPressed: () {}),
            title: Text('bigbasket FAQs'),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 600,
              margin: EdgeInsets.only(left: 8, right: 8, top: 10),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'FAQ',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment:Alignment.center ,
                    margin: EdgeInsets.only(left: 10, top: 20),
                    height: 140,
                    child: Image.asset('assets/images/ques3.png'),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(left: 8,right: 8,top: 8),
                    child: Text('Kindly check the FAQ below if you are not very familiar with the functioning of this website. If your query is of urgent nature and is different from the set of questions then please contact us at: Email: customerservice@bigbasket.com Call us: 1860 123 1000 Chat with us in-app under customer service /Need Help section between 7 am & 10 pm on all days Including Sunday to get our Immediate help If you are not satisfied with the resolution provided by us, then please write to our Grievance Officer at grievanceofficer@bigbasket.com.. ', textDirection:TextDirection.ltr ,
                     textScaleFactor: 1.2,style: TextStyle(
                      fontWeight: FontWeight.w400
                 
                      
                      )),
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
