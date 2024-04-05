import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BulbView()
    );
  }
}
class BulbView extends StatelessWidget {
  const BulbView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back),
                  // TextField(
                  //   decoration: InputDecoration(
                  //     prefixIcon: Icon(Icons.search),
                  //     border: OutlineInputBorder(
                  //     borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  //   ),
                  //   ),
                  // ),
            
                  Row(
                    children: [
                      Icon(Icons.shopping_bag_outlined),
                      Icon(Icons.notification_add_outlined),
                    ],
                  ),
                  
              
              
              
              
                ],
              ),
            ),
      
            Container(
                // padding: EdgeInsets.all(8.0),
                height:350,
                width: double.infinity,
                child:ClipRect(
                  // borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset('assets/car2.jpeg',
                  fit: BoxFit.cover),
                ),    
              ),

              Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text('8.6', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  ],
                ),       
                Icon(Icons.heart_broken_outlined),
              ],),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('lorem lorem lorem brand new car with nice price'),
                  Text('Mercedes Benz c-class Model')
                ],
              ),
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
            
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0 , 20.0 , 0),
                child: Row(
                  children: [
                    Icon(Icons.star),
                    SizedBox(width: 8),
                    Text('5.0(354)', style: TextStyle(fontSize: 14),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0 , 20.0 , 0),
                child: Row(
                  children: [
                    Text('540'),
                    SizedBox(width: 8),
                    Text('Sale', style: TextStyle(fontSize: 14),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0 , 20.0 , 0),
                child: Row(
                  children: [
                    Icon(Icons.location_city_outlined),
                    SizedBox(width: 8),
                    Text('Share', style: TextStyle(fontSize: 14),),
                  ],
                ),
              ),
            ],),

            Text('Variant', style: TextStyle(fontWeight: FontWeight.bold),),

            Text('Size: XS'),

            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
              child: Row(
                children: [
                   Container(
                    width: 25,
                    height: 25,
                    // color: Colors.blue,
                    child: Center(child: Text('XL')),
                    margin: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                        
                      )
                    ),
                   ),
                   Container(
                    width: 25,
                    height: 25,
                    child: Center(child: Text('L')),
                    margin: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                        
                      )
                    ),
                   ),
                   Container(
                    width: 25,
                    height: 25,
                    child: Center(child: Text('ML')),
                    margin: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                        
                      )
                    ),
                   )
                ],
              ),
            ),

            Text('Color: Red'),

            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
              child: Row(
                children: [
                   Container(
                    width: 40,
                    height: 25,
                    // color: Colors.blue,
                    child: Center(child: Text('Red')),
                    margin: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                        
                      )
                    ),
                   ),
                   Container(
                    width: 45,
                    height: 25,
                    child: Center(child: Text('Green')),
                    margin: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                        
                      )
                    ),
                   ),
                   Container(
                    width: 50,
                    height: 25,
                    child: Center(child: Text('Yellow')),
                    margin: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                        
                      )
                    ),
                   )
                ],
              ),
            ),


            const Divider(
              color: Colors.grey,
              thickness: 1.0,
              indent: 5.0,
              endIndent:5.0,
            ),


            // SizedBox(height: 5),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.message_rounded),
                ),
                SizedBox(width: 20),
                Container(
                  height: 40,
                  width: 330,
                  child: ElevatedButton(onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                      backgroundColor: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      )
                    ), 
                  child: Text('Add to Shopping Cart')),
                )
              ],
            )



          ],
        ),
      ),
    );
  }
}
