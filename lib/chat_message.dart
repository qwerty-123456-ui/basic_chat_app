import 'package:flutter/material.dart';

const String _name = "User";

class ChatMessage extends StatelessWidget {

  final String text;

  ChatMessage({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 6.0),
            child: CircleAvatar(
              child: Text(_name[0]),

            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
              ),
              Text(_name, style: Theme.of(context).textTheme.subtitle1,),
              Container(
                margin: const EdgeInsets.only(top: 8.0),
                child: Text(text),
              )
            ],
          )
        ],
      ),
    );
  }
}
