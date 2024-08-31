import 'package:flutter/material.dart';
import 'package:flutter_basics/quotecard.dart';

import 'quote.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  List<Quote> quotes = [
    Quote(
        text: "work done",
        author: "MJA",
        url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9e_-kvopggwn4fy7WOTHPHS9uqDwQ-JSVUA&s",
        time: "12:45 AM"),
    Quote(
        text: "Take care",
        author: "Mom",
        url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX6bNdCuWXTBkvVkpj48KQnj367OveIh7QsTdT0OavCpgoPjjeuEpw9e91mOl-g8PcOw4&usqp=CAU",
        time: "11:23 PM"),
    Quote(
        text: "Happy birthday",
        author: "Friend",
        url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyIuSAucbBq7OfgibAlnYAjxVFNETVT-__1s4pRhxoV4hQFpVrGkrYeTYBh9c_SwTSpy8&usqp=CAU",
        time: "12:00 AM"),
    Quote(
        text: "Sent money..",
        author: "Dad",
        url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_9GfFNqTveEDlGLjlzFK26ekTwc4Ypfsmzg&s",
        time: "10:27 AM"),
  ];

  Widget quoteTemplate(Quote) {
    return QuoteCard(quote: Quote);
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Color.fromRGBO(19, 28, 33, 1),
          appBar: AppBar(
            title: Text(
              "WhatsApp",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            backgroundColor: Color.fromRGBO(31, 44, 52, 1),
            centerTitle: false,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: const Color.fromARGB(202, 255, 255, 255),
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: const Color.fromARGB(202, 255, 255, 255),
                ),
                onPressed: () {},
              ),
            ],
            bottom: TabBar(
              labelColor: Color(0xFF25D366),
              unselectedLabelColor: Colors.white,
              indicatorColor: Color(0xFF25D366),
              indicatorWeight: 5,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              tabs: [
                Tab(text: 'Chats'),
                Tab(text: 'Calls'),
                Tab(text: 'Status'),
                // Tab(text: 'Settings'),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.message),
              backgroundColor: Color(0xFF25D366)),
          body: Column(
            children: quotes.map((quote) => quoteTemplate(quote)).toList(),
          ),
        ));
  }
}
