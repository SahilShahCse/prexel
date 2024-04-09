import 'package:employee/models/book_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookInfoScreen extends StatefulWidget {
  const BookInfoScreen({Key? key}) : super(key: key);

  @override
  State<BookInfoScreen> createState() => _BookInfoScreenState();
}

class _BookInfoScreenState extends State<BookInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          _buildTopSpace(),
          Expanded(
            child: _buildBookDetails(),
          ),

        ],
      ),
    );
  }

  Widget _buildTopSpace() {
    return SizedBox(height: 150);
  }

  Widget _buildBookDetails() {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            _buildBookInfo(),
            _buildOccupiedStatus(),
            _buildGenres(),
            SizedBox(height: 15),
            _buildDescription(),
            SizedBox(height: 15),
            _buildPrexelitesUpgraded(),
            SizedBox(height: 15),
            _buildQueue(),
            Spacer(),
            _buildGetTheBookButton(),
            SizedBox(height: 60,),
          ],
        ),
      ),
    );
  }

  Widget _buildBookInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              book1.bookName,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 17,
                color: Color(0xff253F50),
              ),
            ),
            Text(
              book1.bookAuthor,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xff929FA7),
              ),
            ),
          ],
        ),
        _buildOccupiedContainer(),
      ],
    );
  }

  Widget _buildOccupiedContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Color(0xffFF6600).withOpacity(0.14),
      ),
      child: Text(
        'Occupied',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Color(0xffFF6600),
        ),
      ),
    );
  }

  Widget _buildOccupiedStatus() {
    return Container(
      height: 0.5,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 70),
      color: Color(0xffDEE2E5),
    );
  }

  Widget _buildGenres() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Genres',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xff929FA7),
          ),
        ),
        SizedBox(height: 15),
        SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: book1.genres.length,
            itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 15),
              margin: EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                border: Border.all(width: 0.5),
                borderRadius: BorderRadius.circular(54),
                color: Color(0xff253F5026),
              ),
              child: Center(child: Text(book1.genres[index]),),
            );
          },),
        ),
      ],
    );
  }

  Widget _buildDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xff929FA7),
          ),
        ),
        SizedBox(height: 5),
        Text(
          book1.description,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xff253F50),
          ),
        ),
      ],
    );
  }

  Widget _buildPrexelitesUpgraded() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Prexelites’ have recently been upgraded with this book',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xff929FA7),
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 90,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: book1.prexelitesUpgraded.length,
            itemBuilder: (BuildContext context, int index) {
              final Map<String, String> person = book1.prexelitesUpgraded[index];
              final String name = person.keys.first;
              final String image = person.values.first;

              return Padding(
                padding: EdgeInsets.only(right: 15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      image,
                      width: 62,
                      height: 62,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 5),
                    Text(
                      name,
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff253F50)),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildQueue() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Queue',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xff929FA7),
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 90,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: book1.queue.length,
            itemBuilder: (BuildContext context, int index) {
              final Map<String, String> person = book1.queue[index];
              final String name = person.keys.first;
              final String image = person.values.first;

              return Padding(
                padding: EdgeInsets.only(right: 15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      image,
                      width: 62,
                      height: 62,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 5),
                    Text(
                      name,
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff253F50)),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildGetTheBookButton(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Color(0xff253F50),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(child: Text('Get The Book' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600 , color: Colors.white),)),
    );
  }

}
