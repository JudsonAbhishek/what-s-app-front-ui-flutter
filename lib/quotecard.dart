import 'package:flutter/material.dart';

import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;

  const QuoteCard({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2, 2, 0, 1),
      child: Card(
        color: const Color.fromRGBO(19, 28, 33, 1),
        margin: const EdgeInsets.all(1),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(7, 3, 0, 2),
          child: Row(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(quote.url),
                    radius: 30,
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        quote.author,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        quote.text,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Text(
                quote.time,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const Divider(
                height: 5,
                color: Color.fromARGB(107, 158, 158, 158),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
