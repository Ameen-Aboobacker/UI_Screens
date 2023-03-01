import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  Widget card({
    IconData? icons,
    Color? iconcolor,
    String? tex1,
  }) {
    return Card(
      child: Container(
        height: 125,
        width: 169,
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: iconcolor,
                ),
                child: Icon(
                  icons,
                  size: 40,
                  color: Colors.white,
                )),
            const SizedBox(
              height: 10,
            ),
            Text(
              tex1!,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem navbar({required label, required IconData ico}) {
    return BottomNavigationBarItem(
      icon: Icon(
        ico,
      ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Store'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        color: const Color.fromARGB(255, 238, 237, 237),
        child: Column(
          children: [
            Row(
              children: [
                card(
                    tex1: 'Marketing\nDesign',
                    icons: Icons.campaign_outlined,
                    iconcolor: Color.fromARGB(255, 240, 151, 16)),
                card(
                    tex1: 'Online\nPayments',
                    icons: Icons.currency_rupee,
                    iconcolor: Color.fromARGB(174, 60, 216, 33)),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Row(
              children: [
                card(
                    tex1: 'Discount\nCoupons',
                    icons: Icons.discount_outlined,
                    iconcolor: const Color.fromARGB(255, 246, 192, 110)),
                card(
                    tex1: 'My\nCustomers',
                    icons: Icons.group_outlined,
                    iconcolor:const  Color.fromARGB(255, 70, 168, 144)),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Row(
              children: [
                card(
                    tex1: 'Store QR\nCode',
                    icons: Icons.qr_code_scanner_outlined,
                    iconcolor:const Color.fromARGB(255, 125, 124, 123)),
                card(
                    tex1: 'Extra\nCharges',
                    icons: Icons.payments_outlined,
                    iconcolor: const Color.fromARGB(255, 113, 51, 206)),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Row(children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color.fromARGB(255, 182, 4, 176)),
                            child: const Icon(
                              Icons.notes,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 69,
                          ),
                          Container(
                            height: 20,
                            width: 38,
                            padding: const EdgeInsets.all(3),
                            alignment: Alignment.topRight,
                            color: Colors.green,
                            child: const Text(
                              'NEW',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Order\nForm',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color.fromARGB(255, 15, 107, 182),
          unselectedItemColor: Colors.grey,
          currentIndex: 3,
          showUnselectedLabels: true,
          items: [
            navbar(label: 'Home', ico: Icons.home_outlined),
            navbar(label: 'Orders', ico: Icons.local_mall_outlined),
            navbar(label: 'Products', ico: Icons.grid_view_outlined),
            navbar(label: 'Manage', ico: Icons.library_books_outlined),
            navbar(label: 'Account', ico: Icons.person_outline),
          ]),
    );
  }
}
