import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarouselWidget extends StatefulWidget {
  const ImageCarouselWidget({
    super.key, this.height,
  });

  final double? height;

  @override
  State<ImageCarouselWidget> createState() => _ImageCarouselWidgetState();
}

class _ImageCarouselWidgetState extends State<ImageCarouselWidget> {

  ValueNotifier<int> _index= ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: widget.height ??  180.0,
              onPageChanged: (index,reason){
                _index.value=index;
              }
          ),
          items: [1,2,3,4,5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration:  BoxDecoration(
                        color: Colors.amber,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                );
              },
            );
          }).toList(),
        ),
        ValueListenableBuilder(
          valueListenable: _index,
          builder: (context, index,_) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int i=0; i<5; i++)
                  Container(
                    height: 14,
                    width: 14,
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: i==index ? Colors.amber : Colors.white,
                      border: Border.all(
                        color: i==index ? Colors.amber : Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(30),

                    ),
                  )
              ],
            );
          }
        )
      ],
    );
  }
}