 import 'package:flutter/material.dart';

class Marketplace extends StatelessWidget {
  const Marketplace({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
             child: SizedBox(
              height: MediaQuery.of(context).size.height*0.9,
                    width: double.infinity,
                    child: Column(children: [
                      Image.asset('assets/ads.png'),
                       Image.asset('assets/ads.png'),
                       Image.asset('assets/ads.png'),
                        Image.asset('assets/ads.png'),
                    ],),
                  ),
           );
  }
}
 
 
 