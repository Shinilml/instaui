import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    List dataList = [
      {
        "name": "Eren yeager",
        "dp":
            "https://images.pexels.com/photos/3379933/pexels-photo-3379933.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg":
            "https://images.pexels.com/photos/27244378/pexels-photo-27244378/free-photo-of-blahylur-lake-on-iceland.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      },
      {
        "name": "John Doe",
        "dp":
            "https://images.pexels.com/photos/3796989/pexels-photo-3796989.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg":
            "https://images.pexels.com/photos/27054259/pexels-photo-27054259/free-photo-of-a-girl-with-a-helmet-sitting-on-the-grass-near-a-lake.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      },
      {
        "name": "Jane Smith",
        "dp":
            "https://images.pexels.com/photos/5870407/pexels-photo-5870407.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg":
            "https://images.pexels.com/photos/27244378/pexels-photo-27244378/free-photo-of-blahylur-lake-on-iceland.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      },
      {
        "name": "Alice Johnson",
        "dp":
            "https://images.pexels.com/photos/4265213/pexels-photo-4265213.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg":
            "https://images.pexels.com/photos/27054259/pexels-photo-27054259/free-photo-of-a-girl-with-a-helmet-sitting-on-the-grass-near-a-lake.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      },
      {
        "name": "Robert Brown",
        "dp":
            "https://images.pexels.com/photos/4265213/pexels-photo-4265213.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg":
            "https://images.pexels.com/photos/27054259/pexels-photo-27054259/free-photo-of-a-girl-with-a-helmet-sitting-on-the-grass-near-a-lake.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      },
      {
        "name": "Emily Davis",
        "dp":
            "https://images.pexels.com/photos/3379933/pexels-photo-3379933.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg":
            "https://images.pexels.com/photos/27244378/pexels-photo-27244378/free-photo-of-blahylur-lake-on-iceland.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      },
    ];

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            body: PageView.builder(
              itemCount: 6,
              itemBuilder: (context, index) => Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(dataList[index]["bg"]),
                        fit: BoxFit.cover)),
                child: Column(children: [
                  Divider(
                    color: Colors.black,
                    thickness: 3,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(dataList[index]["dp"]),
                    ),
                    title: Text(dataList[index]["name"]),
                    subtitle: Text("yesterday"),
                    trailing: Icon(Icons.more_vert),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "send message",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 243, 241, 241)),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: const Color.fromARGB(
                                      255, 238, 232, 232))),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.favorite,
                        color: const Color.fromARGB(255, 248, 244, 244),
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 30,
                      )
                    ],
                  )
                ]),
              ),
            ),
          ),
        ));
  }
}
