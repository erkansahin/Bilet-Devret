import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../domain/posts/post.dart';
import '../../../../routes/router.gr.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key key,
    @required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ExtendedNavigator.of(context).pushNamed(Routes.detailPage,
            arguments: DetailPageArguments(post: post));
      },
      child: Card(
        child: Container(
          width: 85,
          height: 190,
          decoration: const BoxDecoration(color: Colors.white10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 11.0, left: 8),
                    child: Text(
                      post.category,
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.only(right: 8.0, top: 11.0),
                        child: Text(
                          "${post.day}/${post.month}/${post.year}",
                          style: const TextStyle(color: Colors.black54, fontSize: 13),
                        ),
                      )),
                    ],
                  )
                ],
              ),
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 0.3,
                  color: Colors.grey,
                  indent: 0,
                  height: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  post.title,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0, right: 18.0),
                  child: Text(
                    "₺${post.price}",
                    style: const TextStyle(
                        fontSize: 24,
                        color: Colors.black54,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              const Spacer(),
              Row(
           
                children: <Widget>[
                  const Padding(
                    padding:  EdgeInsets.only(left: 3.0, bottom: 5.0),
                    child: Icon(
                      Icons.my_location,
                      color: Colors.black54,
                      size: 18,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 2.0, bottom: 3.0),
                      child: Text("${post.town}/${post.city}",
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                          )))
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 5.0)),
            ],
          ),
        ),
      ),
    );
  }
}
