import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../models/book.dart';

class BookCover extends StatelessWidget {
  final Book book;
  const BookCover(this.book, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.only(left: 20),
      height: 250,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20),
            width: MediaQuery.of(context).size.width -20,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomLeft: Radius.circular(50)
              ),
              color: Colors.grey,
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50)
              ),
              child: Image.asset(book.banner, fit: BoxFit.cover,),
            ),
          ),
          Positioned(
            left: 190,
              bottom: 20,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepOrange,
                ),
                child: const Icon(Icons.info_outlined,
                color: Colors.white,
                size: 25,),

              )
          ),
          Positioned(
            left: 240,
              bottom: 20,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kFont
                ),
                child: const Row(
                  children: [
                    Icon(Icons.play_arrow_outlined, color: Colors.white, size: 25,),
                    Text('Audio Book',
                    style: TextStyle(
                      color: Colors.white,
                    ),)
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
