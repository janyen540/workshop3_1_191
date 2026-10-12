import 'package:flutter/material.dart';
import '../models/friend.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  // ฟังก์ชันเลือกสีตามห้อง
  Color getColorByRoom(int room) {
    switch (room) {
      case 1:
        return Colors.lightBlueAccent; // ห้อง 1 สีฟ้า
      case 2:
        return Colors.lightGreenAccent; // ห้อง 2 สีเขียว
      default:
        return Colors.grey.shade300;
    }
  }

  @override
  Widget build(BuildContext context) {
    const rooms = [1, 2];

    return ListView(
      padding: const EdgeInsets.only(bottom: 20),
      children: [
        for (final room in rooms) ...[
          // หัวข้อแยกตามห้อง
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 5),
            child: Text(
              "ห้อง $room",
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // รายชื่อเพื่อนในห้องนั้น ๆ
          for (final f in friends.where((f) => f.room == room))
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: getColorByRoom(f.room),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      f.pic.image,
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                      // ถ้ายังไม่มีไฟล์รูป ให้แสดงตัวอักษรแรกของชื่อแทน
                      errorBuilder: (context, error, stackTrace) {
                        return CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.white,
                          child: Text(
                            f.name.characters.first,
                            style: const TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        f.name,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "อายุ : ${f.age} ปี",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "ห้อง : ${f.room}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        ],
      ],
    );
  }
}