import 'package:flutter/material.dart';

class FavPage extends StatelessWidget {
  static const id = "FavPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Favorite'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      // body: ListView.builder(
      //   itemBuilder: (context, index) => Card(
      //     margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
      //     child: ListTile(
      //       leading: Image.network(
      //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxk6Rckg6pPGbLJpNaHNf9X4rLm_7DYCib_A&usqp=CAU',
      //         fit: BoxFit.cover,
      //       ),
      //       title: Text('Title',
      //           style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //           )),
      //       subtitle: Text('Subtitle',
      //           style: TextStyle(
      //             color: Colors.amber,
      //           )),
      //       trailing: Container(
      //         width: 35,
      //         height: 35,
      //         alignment: Alignment.center,
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(25),
      //           color: Colors.lightBlue,
      //         ),
      //         child: IconButton(
      //           onPressed: () {},
      //           icon: Icon(
      //             Icons.shopping_cart_outlined,
      //             color: Colors.white,
      //             size: 20,
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      //   itemCount: 10,
      // ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
        child: ListView.builder(
          itemBuilder: (context, index) => Card(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxk6Rckg6pPGbLJpNaHNf9X4rLm_7DYCib_A&usqp=CAU',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.025,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Here will be title of your food',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '12000Ks/Bottle',
                            style: TextStyle(
                              color: Colors.amber,
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Expanded(child: SizedBox()),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.055,
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45),
                              color: Colors.lightBlueAccent),
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        SizedBox(height: 5)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
