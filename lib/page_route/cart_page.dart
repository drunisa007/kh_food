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
              Container(
                margin: const EdgeInsets.all(10),
                child: _buildCircleCheckbox(),
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
      // padding: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.all(5),
          color: Colors.white,
          child: Column(
            children: [
              //? display warehouse
              _displayWarehouse(),
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

  Widget _displayWarehouse() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          _buildCircleCheckbox(),
          SizedBox(width: 10),
          Text(
            'Products from Hlaing Thar Yar Warehouse',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
          ),
        ],
      ),
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
                _buildCircleCheckbox(),
                SizedBox(width: 5),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: 80,
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_Qa6Uinm8UjQxCNmDhxd-pxlZzbiV6uPaJQ&usqp=CAU',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
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
                      Text(
                        'Fast 15min devliber',
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 12,
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
                              color: Colors.black12,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Icon(
                            Icons.remove,
                            size: 13,
                          ),
                        ),
                        Container(
                          width: 35,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.5,
                              color: Colors.black12,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Text(
                            '1',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.5,
                              color: Colors.black12,
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

Widget _buildCircleCheckbox() {
  return Container(
    width: 20,
    height: 20,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.blue,
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 1,
          offset: Offset(1, 2), // Shadow position
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(1.0),
      child: true
          ? Icon(
              Icons.check,
              size: 16.0,
              color: Colors.white,
            )
          : Icon(
              Icons.check_box_outline_blank,
              size: 30.0,
              color: Colors.blue,
            ),
    ),
  );
}
