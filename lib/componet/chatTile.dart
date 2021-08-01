import 'package:flutter/material.dart';

Widget chatTile(String imgUrl, String userName, String msg, String date,
    bool seen, int unread) {
  return InkWell(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imgUrl),
              radius: 28.0,
            ),
            SizedBox(
              width: 8.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          userName,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(date),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Expanded(child: Text(msg)),
                      if (seen)
                        Icon(
                          Icons.done_all,
                          size: 18.0,
                          color: Colors.green,
                        ),
                      /* if (!seen)
                        Icon(
                          Icons.done_all,
                          color: Colors.grey,
                          size: 18.0,
                        ),*/
                      if (unread > 0)
                        CircleAvatar(
                          radius: 8,
                          child: Text(
                            unread.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 11),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
    ),
  );
}
