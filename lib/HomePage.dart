import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_ui/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //page controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            //app bar

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        "My",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " Cards",
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  // plus button
                  Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: const Icon(Icons.add))
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            //cards
            SizedBox(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 5372.20,
                    cardNumber: 12345678,
                    expiryMonth: 10,
                    expiryYear: 23,
                    color: Colors.deepPurple[300],
                  ),
                  MyCard(
                    balance: 4392.20,
                    cardNumber: 98765432,
                    expiryMonth: 10,
                    expiryYear: 22,
                    color: Colors.blue[300],
                  ),
                  MyCard(
                    balance: 3302.20,
                    cardNumber: 00987654,
                    expiryMonth: 10,
                    expiryYear: 14,
                    color: Colors.green[300],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800,
                dotHeight: 7,
                dotWidth: 7,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            // 3 button send->pay->bill
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 207, 128, 128),
                      ),
                      height: 60,
                      width: 60,
                    ),
                    const Text('Pay')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 207, 128, 128),
                      ),
                      height: 60,
                      width: 60,
                    ),
                    const Text('Bill')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 207, 128, 128),
                      ),
                      height: 60,
                      width: 60,
                    ),
                    const Text('Anas')
                  ],
                ),
                //send button
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 10, 0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "sticker",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "payment and income",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 10, 0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 15, 15, 15),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "sticker",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "payment and income",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ],
            ),
            //column-> ststs ->transction
          ]),
        ),
      ),
    );
  }
}
