import 'package:employee/components/search_text_field.dart';
import 'package:employee/models/book_model.dart';
import 'package:employee/screens/book_info_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SafeArea(
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody(){
    return  Column(
      children: [
        _buildTopTitle(),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: SearchTextField(),
        ),
        Container(
          height: 1,
          width: double.maxFinite,
          color: Color(0xffFF6600),
        ),
        Expanded(child: _buildGridView()),
      ],
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      leading: Icon(CupertinoIcons.arrow_left , color: Color(0xff253F50),),
      backgroundColor: Colors.white,
      scrolledUnderElevation: 0,
      title: Row(
        children: [
          Text(
            'Section of',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22,
              color: Color(0xffFF6600),
            ),
          ),
          Text(
            ' Upgrading',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22,
              color: Color(0xff1c4052),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopTitle() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Text(
            'Discover',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
              color: Color(0xff1c4052),

            ),
          ),
          Text(
            ' books',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
              color: Color(0xffFF6600),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridView() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 275 / 475,
        ),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return _buildGridItem(book1); // Pass book data here
        },
      ),
    );
  }

  Widget _buildGridItem(BookModel book) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> BookInfoScreen()));
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded( // Place Expanded here
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Image.asset(
                  book.bookImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.bookName,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff253F50),
                    ),
                  ),
                  Text(
                    book.bookAuthor,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff929FA7),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
