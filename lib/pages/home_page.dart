
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Cars',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(

                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true, 'All'),
                    singleTab(false, 'red'),
                    singleTab(false, 'blue'),
                    singleTab(false, 'green'),
                    singleTab(false, 'yellow'),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              _buildImage('assets/images/im_car1.jpg'),
              _buildImage('assets/images/im_car2.jpg'),
              _buildImage('assets/images/im_car3.jpg'),
              _buildImage('assets/images/im_car4.png'),
              _buildImage('assets/images/im_car5.jpg'),
            ],
          ),
        ),
      ),
    );
  }

  Widget singleTab(bool type, String text) {
    return AspectRatio(
      aspectRatio: 2 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: type ? Colors.grey : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: type ? 20 : 17),
          ),
        ),
      ),
    );
  }

  Widget _buildImage(String image) {
    return Container(
      height: 250,
      margin: const EdgeInsets.only(bottom: 20,),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          )),
     child: Container(
        padding: const EdgeInsets.all(20),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20),
         gradient: LinearGradient(
           begin: Alignment.bottomRight,
           colors: [
             Colors.black.withOpacity(0.3),
             Colors.black.withOpacity(0.2),
             Colors.black.withOpacity(0.1),
           ]
         ),
       ),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Row(

             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Expanded(
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [
                       Text('PDP CAR',style: TextStyle(color: Colors.white,fontSize: 25),),
                       SizedBox(width: 10,),
                       Text('Electric',style: TextStyle(color: Colors.white,fontSize: 20),),
                     ],
                   )
               ),
               Container(
                 height: 35,
                 width: 30,
                 decoration: const BoxDecoration(

                   shape: BoxShape.circle,
                   color: Colors.white,
                 ),
                 child: const Center(
                   child: Icon(Icons.favorite_border,size: 21,),
                 ),
               ),
             ],
           ),
           const Text('100\$',style: TextStyle(color: Colors.white,fontSize: 30),)
         ],
       ),
     ),
    );
  }
}
