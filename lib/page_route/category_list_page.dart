import 'package:flutter/material.dart';

class CategoryListPage extends StatelessWidget {
  static const id = "CategoryListPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /** Search Bar */
            _buildSearchBar(context),
            /** Category horizontal list */
            _buildCategoryList(context),
            /** Item Group and List */
            _itemGroupAndList(context),
          ],
        ),
      ),
    );
  }

  IntrinsicHeight _itemGroupAndList(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        // margin: const EdgeInsets.only(top: 10),
        height: MediaQuery.of(context).size.height * 0.7,
        width: double.infinity,
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              color: Colors.white,
              child: ListView.builder(
                itemBuilder: (context, index) => InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    child: Center(
                      child: Text(
                        'Shellfish',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                itemCount: 10,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: ListView.builder(
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  height: 120,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IntrinsicHeight(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: 80,
                              // color: Colors.blue,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzs7FHeq3wN0oc_ZBxlhsR3yWZFnGXG9hlLg&usqp=CAU',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: 100,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'This is food name',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('Product of French',
                                      style: TextStyle(
                                        fontSize: 12,
                                      )),
                                  Text(
                                    'Distributed by KH Company Ltd.,',
                                    style: Theme.of(context).textTheme.caption,
                                  ),
                                  Text(
                                    '12500Ks/Bottle',
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.05,
                              child: Column(
                                children: [
                                  Expanded(child: SizedBox()),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.055,
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
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(color: Colors.black12, height: 1)
                    ],
                  ),
                ),
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildCategoryList(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black12,
          ),
        ),
        color: Colors.white,
      ),
      height: MediaQuery.of(context).size.height * 0.1,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          child: Column(
            children: [
              Container(
                width: 45.0,
                height: 45.0,
                margin: const EdgeInsets.symmetric(
                  horizontal: 7,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      offset: Offset(1, 2), // Shadow position
                    ),
                  ],
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-cuHGYz99zQyT4n4AklAPbL3tYdYU60hFFQ&usqp=CAU'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
              ),
              Text(
                'Sea Food',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        itemCount: 10,
      ),
    );
  }

  Container _buildSearchBar(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              child: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            Flexible(
              child: TextField(
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
    );
  }
}
