import 'package:flutter/material.dart';

class ChartWidget extends StatefulWidget {
  const ChartWidget({super.key});

  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  bool expanded = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              expanded = !expanded;
            });
          },
          child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: expanded ? 100 : 200,
              height: 75,
              decoration: BoxDecoration(
                  color: expanded ? Colors.blue : Colors.green,
                  borderRadius: expanded
                      ? BorderRadius.circular(15)
                      : BorderRadius.circular(40)),
              child: expanded
                  ? const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 30,
                    )
                  : const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                          Text(
                            "Add to cart",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )),
        ),
      ),
    );
  }
}
