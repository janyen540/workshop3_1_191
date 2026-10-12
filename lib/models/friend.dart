enum Friendpic {
  pic1(image: "assets/images/friend1.png"),
  pic2(image: "assets/images/friend2.png"),
  pic3(image: "assets/images/friend3.png"),
  pic4(image: "assets/images/friend4.png");

  const Friendpic({required this.image});
  final String image;
}

class Friend {
  Friend({
    required this.name,
    required this.age,
    required this.room,
    required this.pic,
  });

  String name;
  int age;
  int room;
  Friendpic pic;
}

List<Friend> friends = [
  Friend(name: "ต้น", age: 20, room: 1, pic: Friendpic.pic1),
  Friend(name: "ขนุน", age: 20, room: 2, pic: Friendpic.pic2),
  Friend(name: "โอ๊ค", age: 21, room: 1, pic: Friendpic.pic3),
  Friend(name: "พี", age: 20, room: 2, pic: Friendpic.pic4),
];