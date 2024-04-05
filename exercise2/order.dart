import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:OrderDetail()
    );
  }
}

class OrderDetail extends StatelessWidget {
  const OrderDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(width: 80),
                  Text('Order Detail', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
      
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 350,
                height: 160,
                padding: EdgeInsets.fromLTRB(10.0, 5,10,5),
                margin: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                          
                        )
                      ),
                child: Column(
                  children: [
                    Container(
                    padding: EdgeInsets.all(10.0),
                     width: 300.0,
                     height: 80.0,
                     decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                          
                        )
                      ),

                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,0, 20),
                        child: Icon(Icons.add_circle_outline),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('C0mpleted the Order'),
                          Text('Order Completed on 2024'),
                        ],
                      ),

                      Icon(Icons.arrow_right_alt_outlined)
                    ],)
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Order Done'),
                          SizedBox(width: 150),
                          Text('45.0 Birr')
                        ],
                      ),
                    ),

                    Divider(
                      color: Colors.grey,
                      thickness: 3.0,
                      indent: 10.0,
                      endIndent:10.0,
                    )
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Order Done'),
                          SizedBox(width: 150),
                          Text('45.0 Birr')
                        ],
                      ),
                    ),

                    Divider(
                      color: Colors.grey,
                      thickness: 3.0,
                      indent: 10.0,
                      endIndent:10.0,
                    )
                  ],
                )

                ],)
              
              ),
            ),

           Container(
            width: 350.0,
            height: 250.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2.0,
                  blurRadius: 5.0,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 10,
                        padding: EdgeInsets.all(10.0),
                        child: Image.asset(
                          'assets/car1.jpeg',
                          width: 10,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Product Name',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Product Description',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              'Price: \$9.99',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'In Stock: Yes',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 10,
                        padding: EdgeInsets.all(5.0),
                        child: Image.asset(
                          'assets/car1.jpeg',
                          width: 10,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Product Name',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Product Description',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              'Price: \$9.99',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'In Stock: Yes',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
        ),


        Container(
            width: 350.0,
            height: 200.0,
            padding: EdgeInsets.fromLTRB(0, 10.0,0 ,0),
            margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2.0,
                  blurRadius: 5.0,
                  offset: Offset(0, 3),
                ),
              ],
            ),

            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('Shipping Information', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(3,5,3,0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(3,5,3,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Name', style: TextStyle(color: Colors.grey),),
                        Text('Jacob Jones')
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(3,5,3,0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(3,5,3,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Name', style: TextStyle(color: Colors.grey),),
                        Text('Jacob Jones')
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(3,5,3,0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(3,5,3,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Name', style: TextStyle(color: Colors.grey),),
                        Text('Jacob Jones')
                      ],
                    ),
                  ),
                ),
              ],
            ),
        )



        ],
        ),
      ),
    );
  }
}