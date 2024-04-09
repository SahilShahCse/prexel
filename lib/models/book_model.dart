class BookModel {
  String bookName = '';
  String bookImage = '';
  String bookAuthor = '';
  String description = '';
  bool occupied = false;
  List<String> genres = [];
  List<Map<String, String>> prexelitesUpgraded = [];
  List<Map<String, String>> queue = [];
  DateTime returnUntil = DateTime.now();

  BookModel({
    required this.bookName,
    required this.bookImage,
    required this.bookAuthor,
    required this.description,
    required this.occupied,
    required this.genres,
    required this.prexelitesUpgraded,
    required this.queue,
    required this.returnUntil,
  });
}

BookModel book1 = BookModel(
  bookName: 'Rich Dad Poor Dad',
  bookImage: 'images/book1.png',
  bookAuthor: 'Robert Kayosaki',
  description: 'Atomic Habits is a step-by-step manual for changing routines . . . Inspiring real-life stories. -- Books of the Month ― Financial Times',
  occupied: true,
  genres: ['Fiction' , 'Comedy' , 'Novel' , 'Mystry'],
  prexelitesUpgraded: [ {'Kartik' : 'images/person2.png'} , {'Shazia' : 'images/person1.png'} , {'Diya' : 'images/person3.png'} ],
  queue: [{'Hiten' : 'images/person2.png'}],
  returnUntil: DateTime.now().add(Duration(days: 30)),
);
