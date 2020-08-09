import 'package:extended_image/extended_image.dart';

import 'package:flutter/material.dart';

class ImageHeroPage extends StatelessWidget {
  final String tag;
  final String url;

  const ImageHeroPage(this.tag, this.url);

  @override
  Widget build(BuildContext context) {
    const Color myGreen = Color(0xff4bb17b);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: myGreen,
      ),
      body: Hero(
        tag: tag,
        child: Center(
          child: Container(
            width: double.infinity,
            child: ExtendedImage.network(
              url,
              fit: BoxFit.contain,
              enableSlideOutPage: true,
              //enableLoadState: false,
              mode: ExtendedImageMode.gesture,
              initGestureConfigHandler: (state) {
                return GestureConfig(
                  minScale: 0.9,
                  animationMinScale: 0.7,
                  maxScale: 3.0,
                  animationMaxScale: 3.5,
                  speed: 1.0,
                  inertialSpeed: 100.0,
                  initialScale: 1.0,
                  inPageView: true,
                
                );
              },

              //cancelToken: cancellationToken,
            ),
          ),
        ),
      ),
    );
  }
}
