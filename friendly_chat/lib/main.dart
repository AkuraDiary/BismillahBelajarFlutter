import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const FriendlyChatApp();
  }
}

class FriendlyChatApp extends StatelessWidget {
  const FriendlyChatApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Friendly Chat App',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: const ChatScreen(),
    );
  }
}


class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}


class ChatMessage extends StatelessWidget {
  const ChatMessage({
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      Container(
      margin: const EdgeInsets.only(right: 16.0),
      child: CircleAvatar(child: Text(_name[0]),
      )
      ],
    ),);
  }
}

class _ChatScreenState extends State<ChatScreen> {
  final _textController = TextEditingController();

  Widget _buildTextComponent() {
    return IconTheme(
      data: IconThemeData(color: Theme
          .of(context)
          .colorScheme
          .secondary),
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Flexible(
                child: TextField(
                  controller: _textController,
                  onSubmitted: _handleSubmitted,
                  decoration:
                  const InputDecoration.collapsed(hintText: "Send a message"),
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () => _handleSubmitted(_textController.text)))
            ],
          )),
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Friendly Chat bois'),
      ),
      body: _buildTextComponent(),
    );
  }
}


