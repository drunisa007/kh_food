import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static const id = 'ProfilePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.settings_outlined),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message_outlined),
          )
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 80,
                    height: 80,
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa9UI1y4Shr253ibETjPCOWNBWWpKgQsVKaw&usqp=CAU',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Villa Myo',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        IconButton(
                          iconSize: 20,
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Customer ID: 112312312',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Card(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 8.0,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'My Orders',
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                  ),
                                  Spacer(),
                                  TextButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Text(
                                          'View All',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 15,
                                          color: Colors.grey,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    margin: const EdgeInsets.only(bottom: 12),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.article_rounded,
                                          size: 35,
                                          color: Colors.black87,
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          'All Orders',
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    margin: const EdgeInsets.only(bottom: 12),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.chrome_reader_mode_rounded,
                                          size: 35,
                                          color: Colors.black87,
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          'Waiting Orders',
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    margin: const EdgeInsets.only(bottom: 12),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.delivery_dining_rounded,
                                          size: 35,
                                          color: Colors.black87,
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          'Delivery Orders',
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.fromLTRB(10, 5, 10, 15),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 8.0,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    margin: const EdgeInsets.only(bottom: 12),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          size: 35,
                                          color: Colors.black87,
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          'Location',
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    margin: const EdgeInsets.only(bottom: 12),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.card_giftcard_outlined,
                                          size: 35,
                                          color: Colors.black87,
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          'Bonus',
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    margin: const EdgeInsets.only(bottom: 12),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.square_foot_outlined,
                                          size: 35,
                                          color: Colors.black87,
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          'Delivery Orders',
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    margin: const EdgeInsets.only(bottom: 12),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.people_alt_outlined,
                                          size: 35,
                                          color: Colors.black87,
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          'All Orders',
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    margin: const EdgeInsets.only(bottom: 12),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.card_membership_outlined,
                                          size: 35,
                                          color: Colors.black87,
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          'Voucher',
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        'Let we guide you',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16,
                        ),
                      ),
                      Divider(),
                    ],
                  ),
                ),
                SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Card(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRfpZB0_3qGRT0vx7Jlw662goIgQc9en4esg&usqp=CAU',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: const EdgeInsets.all(4),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'The name of the food is I don\'t know',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '2350Ks/1pc',
                                              style: TextStyle(
                                                color: Colors.amber,
                                              ),
                                            ),
                                            Container(
                                              width: 20,
                                              padding: const EdgeInsets.all(2),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(45),
                                                  color:
                                                      Colors.lightBlueAccent),
                                              child: Icon(
                                                Icons.shopping_cart_outlined,
                                                color: Colors.white,
                                                size: 15,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    childCount: 10,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 5,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
