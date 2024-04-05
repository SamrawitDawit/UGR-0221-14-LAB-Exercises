import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home(),));
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
        title: Container(
          width: 250,
          height: 30,
          child: Row(
            children: [Icon(Icons.search),
            Text('Search Product', style: TextStyle(fontSize: 15),)]
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart )),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications))
        ],
      ),
      body: Card(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Image.asset('assets/lamp.jpg'),
              ),
            ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('8.6'), Icon(Icons.favorite)],
                ),
                Text('Bardi Smart light Bulb Lamp Bohlam Led wifi rgbww 12w 12 watt home lot'),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow,),
                    Text('5.0(354)    |   540 Sale |   '),
                    Icon(Icons.location_on),
                    Text('Brooklyn')
                  ],
                ),
                SizedBox(height: 30,),
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Variant'),
                      Text('Size: XS'),
                      Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        Container(child: Center(child: Text('XS')), width: 30, height: 30,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5),
                          ),),
                        Container(child: Center(child: Text('S')), width: 30, height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                        ),),
                        Container(child: Center(child: Text('M')), width: 30, height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),),),
                        Container(child: Center(child: Text('L')), width: 30, height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),),
                        Container(child: Center(child: Text('XL')), width: 30, height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),),
                        Container(child: Center(child: Text('XXL')), width: 30, height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),),
                      ],),
                      Text('Color: Red'),
                      Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(child: Center(child: Text('Red')), width: 60, height: 30,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5),
                            ),),
                          Container(child: Center(child: Text('Black')), width: 60, height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),),
                          Container(child: Center(child: Text('Green')), width: 60, height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),),),
                          Container(child: Center(child: Text('White')), width: 60, height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),),
                          Container(child: Center(child: Text('Blue')), width: 60, height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),),],)
                    ],
                  ),
                )
              ],
            )
          )
          ],
        ),
      ),
    );
  }
}

