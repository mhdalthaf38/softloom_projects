import 'package:dummy_app/animation/explicit/cardApp/homeCreditCard.dart';
import 'package:dummy_app/animation/explicit/cardApp/verticalflipwidget.dart';
import 'package:flutter/material.dart';

class SecondClass extends StatefulWidget {
  String frontimage;
  String backimage;
  SecondClass({super.key, required this.frontimage, required this.backimage});

  @override
  State<SecondClass> createState() => _SecondClassState();
}

class _SecondClassState extends State<SecondClass>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fading;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _fading = Tween<double>(begin: 0, end: 1).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: FadeTransition(
            opacity: _fading,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: FadeTransition(
                  opacity: _fading,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Full Card',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      Text(
                        'check your card payment details',
                        style: TextStyle(
                            letterSpacing: 2,
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 100,
                ),
                child: Center(
                    child: VerticalFlipCard(
                  frontimage: widget.frontimage,
                  backimage: widget.backimage,
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: FadeTransition(
                  opacity: _fading,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 31, 31, 30),
                        borderRadius: BorderRadius.circular(20)),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 20, bottom: 10),
                            child: Text(
                              'Today',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          ListView.separated(
                              separatorBuilder: (context, index) {
                                return Divider(
                                  thickness: 0.2,
                                );
                              },
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 8,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ListTile(
                                    title: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Apple Music',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Paid',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    trailing: Text(
                                      '\$7776.00',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                    leading: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'assets/images/alphaprofile.png'),
                                    ),
                                  ),
                                );
                              })
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
