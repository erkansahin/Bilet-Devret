import 'package:auto_route/auto_route.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../../../../domain/auth/user_detail.dart';
import '../../../../domain/chat/message_type.dart';
import '../../../../domain/chat/text_message.dart';
import '../../../routes/router.gr.dart';
import 'circle_avatar.dart';
import 'widgets.dart';

class ReceivedMessagesWidget extends StatelessWidget {
  final TextMessage message;
  final UserDetail userDetail;
  final bool showDateHeader;
  const ReceivedMessagesWidget({
    Key key,
    @required this.message,
    @required this.userDetail,
    @required this.showDateHeader,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          children: <Widget>[
            MyCircleAvatar(
              imgUrl: userDetail.photoURL,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  userDetail.displayName,
                  style: Theme.of(context).textTheme.caption,
                ),
                if (message.type == MessageType.text.index)
                  Container(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * .6),
                    padding: const EdgeInsets.all(15.0),
                    decoration: const BoxDecoration(
                      color: Color(0xfff9f9f9),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                    ),
                    child: SelectableText(
                      message.messageBody,
                      style: Theme.of(context).textTheme.bodyText2.apply(
                            color: Colors.black87,
                          ),
                    ),
                  ),
                if (message.type == MessageType.image.index)
                  GestureDetector(
                      onTap: () {
                        ExtendedNavigator.of(context).pushNamed(
                            Routes.imageHeroPage,
                            arguments: ImageHeroPageArguments(
                                tag: message.messageBody,
                                url: message.messageBody));
                      },
                      child: Container(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * .6),
                        padding: const EdgeInsets.all(15.0),
                        decoration: const BoxDecoration(
                          color: Color(0xfff9f9f9),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                        ),
                        child: ExtendedImage.network(
                          message.messageBody,

                          fit: BoxFit.contain,
                          //enableLoadState: false,
                          mode: ExtendedImageMode.gesture,
                          enableSlideOutPage: true,
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
                        ),
                      ))
              ],
            ),
            const SizedBox(width: 15),
            Text(
              "${message.messageCreationTime.hour.toString().padLeft(2, '0')}:${message.messageCreationTime.minute.toString().padLeft(2, '0')}",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .apply(color: Colors.grey),
            ),
          ],
        ),
      ),
    ]);
  }
}
