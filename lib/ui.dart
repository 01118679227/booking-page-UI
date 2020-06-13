import 'package:flutter/material.dart';
class UI1 extends StatefulWidget {
  @override
  UI1State createState() {
    return new UI1State();
  }
}

class UI1State extends State<UI1> {
  bool _index = false;
  int _isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        DefaultTabController(
          length: 4,
           child: Scaffold(
             appBar: AppBar(
               backgroundColor: Colors.white,
               elevation: 0.0,
               bottom: TabBar(
                 indicatorColor: Colors.blue,
                 tabs: <Widget>[
                       Container(
                     width: 240.0,
                     height: 30.0,
                     decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: ( _isSelected == 4 ) ?  Colors.blue : Colors.white,
                     ),
                          child: Center(
                            child: Text("Cancel",
                     style: TextStyle(
                            color: (_isSelected == 4) ?  Colors.white :  Colors.black,
                            fontSize: 13.0
                     ),
                     ),
                          ),
                   ),
                     Container(
                     width: 240.0,
                     height: 30.0,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(50.0),
                       color: (_isSelected == 3) ?  Colors.blue :  Colors.white,
                     ),
                       child: Center(
                         child: Text("In Process",
                     style: TextStyle(
                         color: (_isSelected == 3) ?  Colors.white :  Colors.black,
                         fontSize: 11.0
                     ),
                     ),
                       ),
                   ),
                       Container(
                     width: 240.0,
                     height: 30.0,
                     decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: (_isSelected == 2) ?  Colors.blue :  Colors.white,
                     ),
                        child: Center(
                          child: Text("Completed",
                     style: TextStyle(
                          color: (_isSelected == 2) ?  Colors.white :  Colors.black,
                          fontSize: 11.0
                     ),
                     ),
                        ),
                   ),
                    Container(
                    width: 240.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: (_isSelected == 1) ?  Colors.blue :  Colors.white,
                    ),
                      child: Center(
                        child: Text("All",
                    style: TextStyle(
                        color: (_isSelected == 1) ?  Colors.white :  Colors.black,
                    ),
                    ),
                      ),
                   ),
                 ],
                 ),
             ),
             body: TabBarView(
               children: <Widget>[
                  CancelView(context),
                  InProcessView(context),
                  CompletedView(context),
                  AllView(context),
              ],
           ),
         ),
     ),
     Material(
       child: Padding(
         padding: const EdgeInsets.only(right: 20.0,left: 20.0,top: 40.0,bottom: 20.0),
         child: Container(
           height: 20.0,
           width: MediaQuery.of(context).size.width,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: <Widget>[
               Text('MY BOOKINGS',
               style: TextStyle(
                 fontSize: 16.0,
               ),
               ),
               SizedBox(width: 20.0,),
                GestureDetector(
                onTap: (){},
                   child: Icon(Icons.keyboard_arrow_right,color: Colors.grey,),
              ),
             ],
           ),
         ),
       ),
     )
   ],
   );
  }

     Widget AllView(context) {
       return ListView(
                children: <Widget>[
                   Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white
          ),
          child: Column(
            children: <Widget>[

              //## The First Container InProcess ##
              Padding(
                padding: const EdgeInsets.only(left: 30.0,right: 30.0,top: 30.0),
                child: Container(
                  //height: 120.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey.shade200
                ),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('\$45',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                         Row(
                           children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Text('Govid rao'),
                              ),
                          Align(
                            alignment: Alignment.centerRight,
                              child: CircleAvatar(
                              backgroundColor: Colors.white,
                            ),
                          ),
                           ],
                         ),
                        ],
                      ),
                    ),
                    Container(
                      height: 3.0,
                      width: MediaQuery.of(context).size.width *.6,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey.shade300
                    ),
                    ),
                    Column(
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.only(left: 18.0,right: 18.0,top: 18.0,bottom: 0.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: <Widget>[
                             Text('Ac Service And Repair',
                             style: TextStyle(
                               color: Colors.grey,
                             ),
                             ),
                             SizedBox(width: 10.0,),
                             Image.asset('image/1234.png'),
                           ],
                         ),
                       ),
                          Padding(
                         padding: const EdgeInsets.all(18.0),
                         child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Text('in Process',
                             style: TextStyle(
                               color: Colors.amber
                             ),
                             ),
                            Row(
                             
                              children: <Widget>[
                                  Text('Jun 6,2020',
                             style: TextStyle(
                               color: Colors.grey,
                             ),
                             ),
                             SizedBox(width: 10.0,),
                             Image.asset('image/123.png'),
                              ],
                            )
                           ],
                         ),
                       ),
                     ],
                    ),
                  ],
                ),
                ),
              ),
             //## The Second Container Completed ##
             Padding(
                padding: const EdgeInsets.only(left: 30.0,right: 30.0,top: 30.0),
                child: Container(
                  //height: 120.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey.shade200
                ),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('\$45',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                         Row(
                           children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Text('Govid rao'),
                              ),
                          Align(
                            alignment: Alignment.centerRight,
                              child: CircleAvatar(
                              backgroundColor: Colors.white,
                            ),
                          ),
                           ],
                         ),
                        ],
                      ),
                    ),
                    Container(
                      height: 3.0,
                      width: MediaQuery.of(context).size.width *.6,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey.shade300
                    ),
                    ),
                    Column(
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.only(left: 18.0,right: 18.0,top: 18.0,bottom: 0.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: <Widget>[
                             Text('Ac Service And Repair',
                             style: TextStyle(
                               color: Colors.grey,
                             ),
                             ),
                             SizedBox(width: 10.0,),
                             Image.asset('image/1234.png'),
                           ],
                         ),
                       ),
                          Padding(
                         padding: const EdgeInsets.all(18.0),
                         child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Text('Completed',
                             style: TextStyle(
                               color: Colors.green
                             ),
                             ),
                            Row(
                             
                              children: <Widget>[
                                  Text('Jun 6,2020',
                             style: TextStyle(
                               color: Colors.grey,
                             ),
                             ),
                             SizedBox(width: 10.0,),
                             Image.asset('image/123.png'),
                              ],
                            )
                           ],
                         ),
                       ),
                     ],
                    ),
                  ],
                ),
                ),
              ),
             
            
             //## The Third Container Canceled ##
             Padding(
                padding: const EdgeInsets.only(left: 30.0,right: 30.0,top: 30.0),
                child: Container(
                  //height: 120.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey.shade200
                ),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('\$45',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                         Row(
                           children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Text('Govid rao'),
                              ),
                          Align(
                            alignment: Alignment.centerRight,
                              child: CircleAvatar(
                              backgroundColor: Colors.white,
                            ),
                          ),
                           ],
                         ),
                        ],
                      ),
                    ),
                    Container(
                      height: 3.0,
                      width: MediaQuery.of(context).size.width *.6,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey.shade300
                    ),
                    ),
                    Column(
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.only(left: 18.0,right: 18.0,top: 18.0,bottom: 0.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: <Widget>[
                             Text('Ac Service And Repair',
                             style: TextStyle(
                               color: Colors.grey,
                             ),
                             ),
                             SizedBox(width: 10.0,),
                             Image.asset('image/1234.png'),
                           ],
                         ),
                       ),
                          Padding(
                         padding: const EdgeInsets.all(18.0),
                         child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Text('Canceled',
                             style: TextStyle(
                               color: Colors.red
                             ),
                             ),
                            Row(
                             
                              children: <Widget>[
                                  Text('Jun 6,2020',
                             style: TextStyle(
                               color: Colors.grey,
                             ),
                             ),
                             SizedBox(width: 10.0,),
                             Image.asset('image/123.png'),
                              ],
                            )
                           ],
                         ),
                       ),
                     ],
                    ),
                  ],
                ),
                ),
              ),
             ],
          ),
         ),
                ],
       );
     }

     Widget CompletedView(context) {
       
       return ListView(
                children: <Widget>[
                   Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white
          ),
          child: Column(
            children: <Widget>[
             //## The Second Container Completed ##
             Padding(
                padding: const EdgeInsets.only(left: 30.0,right: 30.0,top: 30.0),
                child: Container(
                  //height: 120.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey.shade200
                ),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('\$45',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                         Row(
                           children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Text('Govid rao'),
                              ),
                          Align(
                            alignment: Alignment.centerRight,
                              child: CircleAvatar(
                              backgroundColor: Colors.white,
                            ),
                          ),
                           ],
                         ),
                        ],
                      ),
                    ),
                    Container(
                      height: 3.0,
                      width: MediaQuery.of(context).size.width *.6,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey.shade300
                    ),
                    ),
                    Column(
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.only(left: 18.0,right: 18.0,top: 18.0,bottom: 0.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: <Widget>[
                             Text('Ac Service And Repair',
                             style: TextStyle(
                               color: Colors.grey,
                             ),
                             ),
                             SizedBox(width: 10.0,),
                             Image.asset('image/1234.png'),
                           ],
                         ),
                       ),
                          Padding(
                         padding: const EdgeInsets.all(18.0),
                         child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Text('Completed',
                             style: TextStyle(
                               color: Colors.green
                             ),
                             ),
                            Row(
                             
                              children: <Widget>[
                                  Text('Jun 6,2020',
                             style: TextStyle(
                               color: Colors.grey,
                             ),
                             ),
                             SizedBox(width: 10.0,),
                             Image.asset('image/123.png'),
                              ],
                            )
                           ],
                         ),
                       ),
                     ],
                    ),
                  ],
                ),
                ),
              ),
             
            
             
             ],
          ),
         ),
                ],
       );
     }

     Widget InProcessView(context) {
        return ListView(
                children: <Widget>[
                   Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white
          ),
          child: Column(
            children: <Widget>[
             //## The Second Container Completed ##
             Padding(
                padding: const EdgeInsets.only(left: 30.0,right: 30.0,top: 30.0),
                child: Container(
                  //height: 120.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey.shade200
                ),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('\$45',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                         Row(
                           children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Text('Govid rao'),
                              ),
                          Align(
                            alignment: Alignment.centerRight,
                              child: CircleAvatar(
                              backgroundColor: Colors.white,
                            ),
                          ),
                           ],
                         ),
                        ],
                      ),
                    ),
                    Container(
                      height: 3.0,
                      width: MediaQuery.of(context).size.width *.6,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey.shade300
                    ),
                    ),
                    Column(
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.only(left: 18.0,right: 18.0,top: 18.0,bottom: 0.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: <Widget>[
                             Text('Ac Service And Repair',
                             style: TextStyle(
                               color: Colors.grey,
                             ),
                             ),
                             SizedBox(width: 10.0,),
                             Image.asset('image/1234.png'),
                           ],
                         ),
                       ),
                          Padding(
                         padding: const EdgeInsets.all(18.0),
                         child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Text('In Process',
                             style: TextStyle(
                               color: Colors.amber
                             ),
                             ),
                            Row(
                             
                              children: <Widget>[
                                  Text('Jun 6,2020',
                             style: TextStyle(
                               color: Colors.grey,
                             ),
                             ),
                             SizedBox(width: 10.0,),
                             Image.asset('image/123.png'),
                              ],
                            )
                           ],
                         ),
                       ),
                     ],
                    ),
                  ],
                ),
                ),
              ),
             
            
             
             ],
          ),
         ),
                ],
       );
     }

     Widget CancelView(context) {
       return ListView(
                children: <Widget>[
                   Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white
          ),
          child: Column(
            children: <Widget>[
             //## The Second Container Completed ##
             Padding(
                padding: const EdgeInsets.only(left: 30.0,right: 30.0,top: 30.0),
                child: Container(
                  //height: 120.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey.shade200
                ),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('\$45',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                         Row(
                           children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Text('Govid rao'),
                              ),
                          Align(
                            alignment: Alignment.centerRight,
                              child: CircleAvatar(
                              backgroundColor: Colors.white,
                            ),
                          ),
                           ],
                         ),
                        ],
                      ),
                    ),
                    Container(
                      height: 3.0,
                      width: MediaQuery.of(context).size.width *.6,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey.shade300
                    ),
                    ),
                    Column(
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.only(left: 18.0,right: 18.0,top: 18.0,bottom: 0.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: <Widget>[
                             Text('Ac Service And Repair',
                             style: TextStyle(
                               color: Colors.grey,
                             ),
                             ),
                             SizedBox(width: 10.0,),
                             Image.asset('image/1234.png'),
                           ],
                         ),
                       ),
                          Padding(
                         padding: const EdgeInsets.all(18.0),
                         child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Text('Canceld',
                             style: TextStyle(
                               color: Colors.red
                             ),
                             ),
                            Row(
                             
                              children: <Widget>[
                                  Text('Jun 6,2020',
                             style: TextStyle(
                               color: Colors.grey,
                             ),
                             ),
                             SizedBox(width: 10.0,),
                             Image.asset('image/123.png'),
                              ],
                            )
                           ],
                         ),
                       ),
                     ],
                    ),
                  ],
                ),
                ),
              ),
             
            
             
             ],
          ),
         ),
                ],
       );
     }
}