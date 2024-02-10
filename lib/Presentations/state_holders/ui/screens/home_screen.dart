


import 'package:carousel_slider/carousel_slider.dart';
import 'package:crypto_final/Presentations/state_holders/ui/widgets/image_carousel.dart';
import 'package:flutter/material.dart';
import '../utility/assets_path.dart';
import '../widgets/home/circle_icon_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const SizedBox(height: 8,),
                  SearchTextField,
                  const SizedBox(height: 16),
                  const ImageCarouselWidget(),
                ],
              ),
            ),
          )

    );

  }

  // veriable created and called
  TextFormField get SearchTextField {
    return TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    prefixIcon: Icon(Icons.search,color: Colors.grey,),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),




                  ),
                );
  }
  AppBar get appBar{
    return  AppBar(
      //title: Image.asset(AssetPath.logo,height: 60,width: 60,),
      actions: [
      CircleIconButton(
      onTap: (){},
      iconData: Icons.person,
      ),
       const SizedBox(width: 8),
        CircleIconButton(
        onTap: (){},
      iconData: Icons.call,
      ),
       const SizedBox(width: 8),
      CircleIconButton(
      onTap: (){},
      iconData: Icons.notifications,
      ),
      const SizedBox(width: 8),
  ],
  );
}
}




