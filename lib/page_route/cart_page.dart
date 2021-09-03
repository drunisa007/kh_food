import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  static const id = 'CartPage';

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      title: Text('Cart'),
      centerTitle: true,
    );
    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: appBar.preferredSize.height + 20,
          child: Row(
            children: [
              Checkbox(
                value: true,
                onChanged: (value) {},
              ),
              Text(
                'Select All',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(
                        'Total Amount:',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '145000MMK',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Text(
                        'Total Dsicount:',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '14500MMK',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.amber,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.5,
                            color: Colors.amber,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Detail',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.amber,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_up,
                              size: 16,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 5,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.access_alarm,
          color: Colors.white,
        ),
      ),
      body: _buildBody(context),
    );
  }

  Container _buildBody(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(bottom: 4),
          padding: const EdgeInsets.all(5),
          color: Colors.white,
          child: Column(
            children: [
              //? display warehouse
              _displayWarehouse(),
              Divider(),
              //? display product
              _displayProduct(),

              //? display promotion
              _displayPromotion(),
            ],
          ),
        ),
        itemCount: 3,
      ),
    );
  }

  Row _displayWarehouse() {
    return Row(
      children: [
        Checkbox(
          value: true,
          onChanged: (value) {
            // TODO: Checkbox changes
          },
        ),
        Text(
          'Products from Hlaing Thar Yar Warehouse',
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.w500,
            fontSize: 13,
          ),
        ),
      ],
    );
  }

  Container _displayPromotion() {
    return Container(
      height: 45 * 2, //? [45 = height of item] && [2 = array length of items]
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => Container(
          child: Column(
            children: [
              Divider(),
              Container(
                height: 25,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "New User Bonus",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 3),
                    Expanded(
                      child: Text(
                        'Buy any item fully 500000ks, get 20% free now',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(width: 3),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            'Get Now',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.amber,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        itemCount: 2,
      ),
    );
  }

  Container _displayProduct() {
    return Container(
      height: 100 *
          3, //? [100 = product item height] && [3 = products array length]
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: 80,
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_Qa6Uinm8UjQxCNmDhxd-pxlZzbiV6uPaJQ&usqp=CAU',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  width: MediaQuery.of(context).size.width * 0.35,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Item name will be here',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.lightBlue,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Text(
                          'Fast 15min devliber',
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Text(
                        '5000Ks/CS',
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Expanded(
                      child: SizedBox(),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.5,
                              color: Colors.black,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Icon(
                            Icons.remove,
                            size: 13,
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.5,
                              color: Colors.black,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Text('1'),
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.5,
                              color: Colors.black,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        itemCount: 3,
      ),
    );
  }
}
