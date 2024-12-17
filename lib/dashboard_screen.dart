// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    print('objct');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(217, 31, 109, 1),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            maxRadius: 13,
            backgroundImage: AssetImage('images/profilepicture/danish.jpeg'),
          ),
        ),
        title: Text(
          'easypaisa',
          style: TextStyle(
              color: Colors.white.withOpacity(1),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: Colors.white,
              )),
        ],
      ),

      /////BODY STARTING HERE.../////

      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height
          ),
          child: Column(
            children: <Widget>[
              Divider(
                color: Colors.grey.shade700,
                thickness: 2,
                height: 0,
              ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(217, 31, 109, 1),
                ),
                child: Center(
                  child: Container(
                    height: 180,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 17, top: 13),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'easypaisa',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 110,
                              ),
                              Icon(
                                Icons.currency_exchange,
                                size: 20,
                                color: const Color.fromARGB(255, 168, 102, 1),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  print('Pressed');
                                },
                                child: Text(
                                  'My Rewards',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Available Balance',
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 17,
                          ),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Rs. 367,854',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.visibility)),
                              SizedBox(
                                width: 50,
                              ),
                              OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  minimumSize: Size(10, 25),
                                  side: BorderSide(
                                      color: Colors.green.shade800, width: 2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                child: Text(
                                  'Upgrade Account',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17),
                          child: Row(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  print('Pressed Text');
                                },
                                child: Text(
                                  'Tap to hide balance',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 17),
                              ),
                              SizedBox(
                                width: 85,
                              ),
                              ConstrainedBox(
                                constraints: BoxConstraints.tightFor(
                                    height: 25, width: 135),
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(217, 31, 109, 1),
                                    foregroundColor: Colors.white,
                                    side: BorderSide(
                                      color:
                                          const Color.fromARGB(217, 31, 109, 1),
                                      width: 2,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Add Cash',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //featured containers starting from here
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    _FeaturedContainers(Icons.send, ' Send\nMoney'),
                    SizedBox(
                      width: 15,
                    ),
                    _FeaturedContainers(Icons.payment, '    Bill\nPayment'),
                    SizedBox(
                      width: 15,
                    ),
                    _FeaturedContainers(Icons.card_giftcard, '  Mobile\nPackages')
                  ],
                ),
              ),
              //New Heading
              SizedBox(
                height: 23,
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'More with easypaisa',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
          
              //SERVICES CONTAINERS STARTING FROM HERE
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            _ServicesSectionContainer(
                                Icons.move_to_inbox_outlined, 'Easyload', () {
                              print('Easylad pressed');
                            }),
                            _ServicesSectionContainer(
                                Icons.currency_exchange, 'Easycash Loan', () {
                              print('Easycash loan pressed');
                            }),
                            _ServicesSectionContainer(
                                Icons.savings_outlined, 'Saving Pocket', () {
                              print('Saving Pocket pressed');
                            }),
                            _ServicesSectionContainer(
                                Icons.group_add_outlined, 'Invite & Earn', () {
                              print('Invite & earn pressed');
                            }),
                            _ServicesSectionContainer(Icons.web, 'Raast Payment',
                                () {
                              print('Raast payment pressed');
                            }),
                            _ServicesSectionContainer(
                                Icons.percent_outlined, 'Discount', () {
                              print('Discount pressed');
                            }),
                            _ServicesSectionContainer(Icons.stars, 'Topups', () {
                              print('topups pressed');
                            }),
                            _ServicesSectionContainer(
                                Icons.school_rounded, 'Education', () {
                              print('Education pressed');
                            }),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            _ServicesSectionContainer(
                                Icons.public, 'International\n Remittance', () {
                              print('International Remittance pressed');
                            }),
                            _ServicesSectionContainer(
                                Icons.app_shortcut, 'Mini App', () {
                              print('Mini App pressed');
                            }),
                            _ServicesSectionContainer(
                                Icons.savings_rounded, 'Savings', () {
                              print('Savings pressed');
                            }),
                            _ServicesSectionContainer(
                                FontAwesomeIcons.calendarDays,
                                'Buy Now\nPay Later', () {
                              print('Buy now pay later pressed');
                            }),
                            _ServicesSectionContainer(
                                FontAwesomeIcons.circleDollarToSlot, 'Donations',
                                () {
                              print('Donations pressed');
                            }),
                            _ServicesSectionContainer(Icons.business, 'NADRA fee',
                                () {
                              print('nadra fee pressed');
                            }),
                            _ServicesSectionContainer(
                                Icons.laptop_chromebook, '   Online\nPayments',
                                () {
                              print('online payments pressed');
                            }),
                            _ServicesSectionContainer(
                                Icons.celebration, 'Enter and Win', () {
                              print('Enter and win pressed');
                            }),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            _ServicesSectionContainer(
                                Icons.health_and_safety_outlined, 'Insurance',
                                () {
                              print('Insurance pressed');
                            }),
                            _ServicesSectionContainer(
                                FontAwesomeIcons.roadCircleCheck, 'M-Tag', () {
                              print('M-tag pressed');
                            }),
                            _ServicesSectionContainer(
                                FontAwesomeIcons.coins, 'Rs.1 Game', () {
                              print('Saving Pocket pressed');
                            }),
                            _ServicesSectionContainer(Icons.more_horiz, 'See All',
                                () {
                              print('See All pressed');
                            }),
                            _ServicesSectionContainer(Icons.speed, 'Credit Score',
                                () {
                              print('Credit store pressed');
                            }),
                            _ServicesSectionContainer(
                                Icons.wallet_giftcard, 'Tohfa', () {
                              print('Tohfa pressed');
                            }),
                            _ServicesSectionContainer(Icons.more_horiz, 'See All',
                                () {
                              print('See All pressed');
                            }),
                            Container(
                              height: 80,
                              width: 80,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          
              //NEW HEADING 2
              SizedBox(
                height: 25,
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Get your easypaisa Debit Card',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  _DebitCards(const Color.fromARGB(204, 8, 49, 3), 'Online Card',
                      'Only for Online Payments in Pakistan'),
                  _DebitCards(Colors.grey.shade900, 'Plastic Card',
                      'Use at any ATM or Shop in Pakistan')
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Discover MiniApps on easypaisa',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Container(
                  height: 210,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18)),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 5, top: 15),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/savour.jpg'),
                                  'Savour Foods'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/tapshop.png'),
                                  'TapShop'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/saudi.avif'),
                                  'Visit Saudi'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/pizzamax.png'),
                                  'Pizza Max'),
                              _MiniAppContainer(
                                  AssetImage(
                                      'images/miniappsicons/doctorconsult.png'),
                                  'ConsultDoctor'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/esports.jpg'),
                                  'Esports'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/habibi.jpg'),
                                  'Habibi'),
                              _MiniAppContainer(
                                  AssetImage(
                                      'images/miniappsicons/jamilsweets.jpg'),
                                  'Jamil Sweets'),
                              _MiniAppContainer(
                                  AssetImage(
                                      'images/miniappsicons/newyorker.jpg'),
                                  'NewYorker'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/onic.png'),
                                  'Onic'),
                              _MiniAppContainer(
                                  AssetImage(
                                      'images/miniappsicons/easyticket.png'),
                                  'Easy Ticket'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/paratha.png'),
                                  'What a Paratha'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/vouch.png'),
                                  'Vouch365'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/nihari.jpg'),
                                  'Ami ki Nihari'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/cricwick.png'),
                                  'Cricwick'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/bajao.jpg'),
                                  'Bajao'),
                              _MiniAppContainer(
                                  AssetImage(
                                      'images/miniappsicons/hotnspicy.png'),
                                  'HotnSpicy'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/gamebox.png'),
                                  'Gamebox'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/donuts.jpg'),
                                  'O Donuts'),
                              _MiniAppContainer(
                                  AssetImage(
                                      'images/miniappsicons/lhrbroast.jpg'),
                                  'Lahore Broast'),
                              _MiniAppContainer(
                                  AssetImage(
                                      'images/miniappsicons/nikahnama.jpg'),
                                  'Audio Nikahnama'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/ginyaki.jpg'),
                                  'Ginyaki'),
                              _MiniAppContainer(
                                  AssetImage(
                                      'images/miniappsicons/delishpizza.png'),
                                  'Delish Pizza Bar'),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, top: 5),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              _MiniAppContainer(
                                  AssetImage(
                                      'images/miniappsicons/playgames.jpg'),
                                  'Play Games'),
                              _MiniAppContainer(
                                  AssetImage(
                                      'images/miniappsicons/meezanbank.png'),
                                  'Al Meezan'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/bookme.png'),
                                  'BookMe'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/more.png'),
                                  'More'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/skindeep.png'),
                                  'SkinDeep'),
                              _MiniAppContainer(
                                  AssetImage(
                                      'images/miniappsicons/sastaticket.png'),
                                  'SastaTicket'),
                              _MiniAppContainer(
                                  AssetImage(
                                      'images/miniappsicons/faysalfund.png'),
                                  'FaysalFunds'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/more.png'),
                                  'More'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/rizq.png'),
                                  'Rizq'),
                              _MiniAppContainer(
                                  AssetImage(
                                      'images/miniappsicons/starzplay.jpg'),
                                  'STARZPLAY'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/smash.png'),
                                  'Smash Lahore'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/more.png'),
                                  'More'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/efulife.jpg'),
                                  'EFU Life'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/webdoc.png'),
                                  'Webdoc'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/zenith.png'),
                                  'Zenith Store'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/more.png'),
                                  'More'),
                              _MiniAppContainer(
                                  AssetImage(
                                      'images/miniappsicons/sweetcreme.jpg'),
                                  'Sweet Creme'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/dough.png'),
                                  'Dough With the Flow'),
                              _MiniAppContainer(
                                  AssetImage(
                                      'images/miniappsicons/smartchoice.png'),
                                  'Smartchoice'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/more.png'),
                                  'More'),
                              _MiniAppContainer(
                                  AssetImage(
                                      'images/miniappsicons/whitecastle.png'),
                                  'Whites Castle'),
                              _MiniAppContainer(
                                  AssetImage('images/miniappsicons/more.png'),
                                  'More'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Schedule Your Transactions',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 18),
              //   child: _TransactionContainer(
              //     AssetImage('images/transactioncontainerimages/firstpic.png'),
              //     'Set Payments in advance',
              //     'Now Setup Mobile Packages and Easyload in advance',
              //     'Schedule Payments',
              //   ),
              // ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

//FEATURED CONTAINER CODE

Widget _FeaturedContainers(IconData Icone, String label) {
  return ConstrainedBox(
    constraints: BoxConstraints.tightFor(width: 110, height: 100),
    child: ElevatedButton(
        style: ButtonStyle(
            elevation: WidgetStatePropertyAll(10),
            shadowColor: WidgetStatePropertyAll(Colors.grey.shade500),
            backgroundColor: WidgetStatePropertyAll(Colors.white),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)))),
        onPressed: () {
          print('Send Money');
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icone,
              size: 25,
              color: const Color.fromARGB(217, 31, 109, 1),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              label,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            )
          ],
        )),
  );
}

//SERVICES SECTION CODE

Widget _ServicesSectionContainer(
    IconData Icondetail, String Label, VoidCallback onPressed) {
  return Padding(
    padding: const EdgeInsets.all(7.0),
    child: GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 80,
        width: 80,
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icondetail,
                color: const Color.fromARGB(217, 31, 109, 1),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  Label,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 8.95,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

///DEBIT CARD CONTAINERS CODE/////

Widget _DebitCards(Color cardcolor, String text, String subtext) {
  return Padding(
    padding: const EdgeInsets.only(left: 18, right: 5, top: 15, bottom: 20),
    child: Container(
      height: 170,
      width: 170,
      decoration: BoxDecoration(
        color: cardcolor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              subtext,
              style: TextStyle(color: Colors.yellow, fontSize: 11),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                print('Manage card pressed');
              },
              child: Container(
                height: 25,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.green),
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Manage card',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        FontAwesomeIcons.arrowRight,
                        color: Colors.white,
                        size: 18,
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

////MINIAPPS CONTAINER CODE////
Widget _MiniAppContainer(ImageProvider imagedata, String brandname) {
  return SingleChildScrollView(
    child: Container(
        height: 90,
        width: 87,
        color: Colors.white,
        child: Padding(
            padding: const EdgeInsets.only(left: 2, right: 3, top: 5),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 2,
                            offset: Offset(0, 2),
                            color: Colors.grey.shade500),
                      ],
                      image:
                          DecorationImage(image: imagedata, fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Center(
                    child: Text(
                      brandname,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ]))),
  );
}

////////////TRANSACTION CONTAINER CODE/////////////
// Widget _TransactionContainer(ImageProvider imagedata, String labeltext,
//     String subtext, String buttontext) {
//   return Container(
//     height: 150,
//     width: double.infinity,
//     decoration: BoxDecoration(
//         color: Colors.white, borderRadius: BorderRadius.circular(18)),
//     child: Row(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: <Widget>[
//         Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.only(left: 15, top: 8),
//               child: Container(
//                 height: 65,
//                 width: 65,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     image:
//                         DecorationImage(image: imagedata, fit: BoxFit.cover)),
//               ),
//             ),
//           ],
//         ),
//         SizedBox(
//           width: 10,
//         ),
//         Column(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.only(top: 13, right: 20),
//               child: Text(
//                 labeltext,
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20),
//               ),
//             ),
//             SizedBox(
//               height: 5,
//             ),
//             Text(
//               subtext,
//               style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(right: 50, top: 15),
//               child: OutlinedButton(
//                   style: OutlinedButton.styleFrom(
//                       side: BorderSide(color: Colors.black)),
//                   onPressed: () {
//                     print('Schedule Payments button pressed');
//                   },
//                   child: Row(
//                     children: <Widget>[
//                       Text(
//                         buttontext,
//                         style: TextStyle(color: Colors.black, fontSize: 15),
//                       ),
//                       SizedBox(
//                         width: 5,
//                       ),
//                       Icon(
//                         FontAwesomeIcons.arrowRight,
//                         color: Colors.green,
//                         size: 17,
//                       )
//                     ],
//                   )),
//             )
//           ],
//         )
//       ],
//     ),
//   );
// }
