import 'package:dummy_app/profilepage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    double Screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Profilepage()));
          },
          child: Row(
            children: [
              const Text(
                "Lovebirds",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 24,
                    fontFamily: 'Playwrite'),
              ),
              Icon(Icons.keyboard_arrow_down_rounded)
            ],
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite_border_outlined,
              color: Color.fromARGB(255, 0, 0, 0),
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.messenger_outline_outlined,
              size: 25,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: const Color.fromARGB(255, 220, 158, 158),
                      ),
                      child: const Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.person), Text("pers")],
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: const Color.fromARGB(255, 220, 158, 158),
                      ),
                      child: const Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.person), Text("pers")],
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: const Color.fromARGB(255, 220, 158, 158),
                      ),
                      child: const Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.person), Text("pers")],
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: const Color.fromARGB(255, 220, 158, 158),
                      ),
                      child: const Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.person), Text("pers")],
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: const Color.fromARGB(255, 220, 158, 158),
                      ),
                      child: const Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.person), Text("pers")],
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: const Color.fromARGB(255, 220, 158, 158),
                      ),
                      child: const Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.person), Text("pers")],
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: const Color.fromARGB(255, 220, 158, 158),
                      ),
                      child: const Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.person), Text("pers")],
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: const Color.fromARGB(255, 220, 158, 158),
                      ),
                      child: const Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.person), Text("pers")],
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: const Color.fromARGB(255, 220, 158, 158),
                      ),
                      child: const Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.person), Text("pers")],
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: const Color.fromARGB(255, 220, 158, 158),
                      ),
                      child: const Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.person), Text("pers")],
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: const Color.fromARGB(255, 220, 158, 158),
                      ),
                      child: const Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.person), Text("pers")],
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: const Color.fromARGB(255, 220, 158, 158),
                      ),
                      child: const Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.person), Text("pers")],
                      )),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                          const Text("4lthaf__mohammed"),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: Icon(Icons.more_vert),
                      )
                    ],
                  ),
                  Container(
                    height: Screenheight * 0.5,
                    width: double.infinity,
                    child: Image.network(
                      'https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?cs=srgb&dl=pexels-jmark-250591.jpg&fm=jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.favorite_border_outlined,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.chat_bubble_outline_outlined,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.send_rounded,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.bookmark_border_outlined,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                          const Text("4lthaf__mohammed"),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: Icon(Icons.more_vert),
                      )
                    ],
                  ),
                  Container(
                    height: Screenheight * 0.5,
                    width: double.infinity,
                    child: Image.network(
                      'https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?cs=srgb&dl=pexels-jmark-250591.jpg&fm=jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.favorite_border_outlined,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.chat_bubble_outline_outlined,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.send_rounded,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.bookmark_border_outlined,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                          const Text("4lthaf__mohammed"),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: Icon(Icons.more_vert),
                      )
                    ],
                  ),
                  Container(
                    height: Screenheight * 0.5,
                    width: double.infinity,
                    child: Image.network(
                      'https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?cs=srgb&dl=pexels-jmark-250591.jpg&fm=jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.favorite_border_outlined,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.chat_bubble_outline_outlined,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.send_rounded,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.bookmark_border_outlined,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                          const Text("4lthaf__mohammed"),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: Icon(Icons.more_vert),
                      )
                    ],
                  ),
                  Container(
                    height: Screenheight * 0.5,
                    width: double.infinity,
                    child: Image.network(
                      'https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?cs=srgb&dl=pexels-jmark-250591.jpg&fm=jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.favorite_border_outlined,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.chat_bubble_outline_outlined,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.send_rounded,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.bookmark_border_outlined,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                          const Text("4lthaf__mohammed"),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: Icon(Icons.more_vert),
                      )
                    ],
                  ),
                  Container(
                    height: Screenheight * 0.5,
                    width: double.infinity,
                    child: Image.network(
                      'https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?cs=srgb&dl=pexels-jmark-250591.jpg&fm=jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.favorite_border_outlined,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.chat_bubble_outline_outlined,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.send_rounded,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.bookmark_border_outlined,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                          const Text("4lthaf__mohammed"),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: Icon(Icons.more_vert),
                      )
                    ],
                  ),
                  Container(
                    height: Screenheight * 0.4,
                    width: double.infinity,
                    child: Image.network(
                      'https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?cs=srgb&dl=pexels-jmark-250591.jpg&fm=jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.favorite_border_outlined,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15),
                            child: Icon(
                              Icons.chat_bubble_outline_outlined,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15),
                            child: Icon(
                              Icons.send_rounded,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Icon(
                          Icons.bookmark_border_outlined,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
