import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  static const id = 'CartPage';

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      title: Text('Cart'),
      centerTitle: true,
    );

    void _popupModal() {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Amount Detail',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width * 0.72,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          height: 80,
                          width: 80,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGPQHKtD3xpGBiBFT3yMpHiWKdVDotE-UH-w&usqp=CAU',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        itemCount: 3,
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      child: Row(
                        children: [
                          Text('Total 10'),
                          Icon(Icons.arrow_forward_ios_rounded),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Amount',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '234500MMK',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Discount',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '234500MMK',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.amber,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Coupon Card',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '234500MMK',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.amber,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Discount',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '234500MMK',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Amount',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '234500MMK',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      );
    }

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
                        'Amount:',
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
                        'Dsicount:',
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
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 5,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Check Out'),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
              )
            ],
          ),
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
