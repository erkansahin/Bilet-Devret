import 'package:auto_route/auto_route.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../../../../domain/chat/message_type.dart';
import '../../../../domain/chat/text_message.dart';
import '../../../routes/router.gr.dart';
import 'widgets.dart';

class SentMessageWidget extends StatelessWidget {
  final TextMessage message;

  final bool showDateHeader;
  const SentMessageWidget({
    Key key,
    this.message,
    @required this.showDateHeader,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color myGreen = Color(0xff4bb17b);
    return Column(children: [
      if (showDateHeader)
        DateBuilder(
          date: message.messageCreationTime,
        )
      else
        Container(),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 7.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              "${message.messageCreationTime.hour.toString().padLeft(2, '0')}:${message.messageCreationTime.minute.toString().padLeft(2, '0')}",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .apply(color: Colors.grey),
            ),
            const SizedBox(width: 15),
            if (message.type == MessageType.text.index)
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * .6),
                padding: const EdgeInsets.all(15.0),
                decoration: const BoxDecoration(
                  color: myGreen,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                  ),
                ),
                child: SelectableText(
                  message.messageBody,
                  style: Theme.of(context).textTheme.bodyText1.apply(
                        color: Colors.white,
                      ),
                ),
              ),
            if (message.type == MessageType.image.index)
              GestureDetector(
                onTap: () {
                  ExtendedNavigator.of(context).pushNamed(Routes.imageHeroPage,
                      arguments: ImageHeroPageArguments(
                          tag: message.messageBody, url: message.messageBody));
                },
                child: Container(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * .6),
                    padding: const EdgeInsets.all(15.0),
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      ),
                    ),
                    child: ExtendedImage.network(
                      message.messageBody,

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
                          inPageView: false,
          
                        );
                      },

                      //cancelToken: cancellationToken,
                    )),
              )
          ],
        ),
      ),
    ]);
  }
}
