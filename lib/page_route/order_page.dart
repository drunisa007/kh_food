import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  static const id = 'OrderPage';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.black12,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 14,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Search',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  'All Orders',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Waiting Orders',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Delivery Orders',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildAllOrder(context),
            _buildWaitingOrder(context),
            _buildDeliveryOrder(context),
          ],
        ),
      ),
    );
  }
}

Row _displayWarehouse() {
  return Row(
    children: [
      Icon(
        Icons.location_on_outlined,
        color: Colors.amber,
        size: 14,
      ),
      SizedBox(width: 5),
      Text(
        'Products from Hlaing Thar Yar Warehouse',
        style: TextStyle(
          color: Colors.amber,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
    ],
  );
}

Widget _buildOrderStatus() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Order Number: 12313121412',
            style: TextStyle(
              fontSize: 13,
              color: Colors.lightBlue,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            'Wed, 8 Sep 2021',
            style: TextStyle(
              fontSize: 13,
              color: Colors.lightBlue,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      Text(
        'Order Delivered',
        style: TextStyle(
          fontSize: 13,
          color: Colors.lightBlue,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );
}

Container _displayProduct() {
  return Container(
    height:
        100 * 3, //? [100 = product item height] && [3 = products array length]
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
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_Qa6Uinm8UjQxCNmDhxd-pxlZzbiV6uPaJQ&usqp=CAU',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
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
                      'Product of French',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Distributed by KH Company Ltd.',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 10),
                  Text(
                    '12500Ks',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.amber,
                    ),
                  ),
                  Text(
                    'x4',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
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

Widget _buildDeliveryStatus() {
  return Row(
    children: [
      Text(
        'Delivery fee:',
        style: TextStyle(
          fontSize: 12,
          color: Colors.lightBlue,
          fontWeight: FontWeight.w500,
        ),
      ),
      Text(
        'If return product, fee will be paid.',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
      Expanded(child: SizedBox()),
      Text(
        '0ks x 1',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ],
  );
}

Widget _buildAmount() {
  return Container(
    width: double.infinity,
    child: Wrap(
      children: [
        Text(
          'Total: 1550000MMK | ',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        Text(
          'Discount: 450000MMK | ',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        RichText(
          text: TextSpan(
              text: 'Pay:',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
              children: [
                TextSpan(
                  text: '1600000MMK',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.amber,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ]),
        ),
      ],
    ),
  );
}

Widget _buildButton() {
  return Container(
    width: double.infinity,
    child: ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(Icons.location_on_outlined),
      label: Text('Check on Map'),
    ),
  );
}

Widget _buildAllOrder(BuildContext context) => ListView.builder(
      itemBuilder: (context, index) => Container(
        color: Colors.white,
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        child: Column(
          children: [
            _displayWarehouse(),
            SizedBox(height: 10),
            _buildOrderStatus(),
            SizedBox(height: 10),
            _displayProduct(),
            SizedBox(height: 10),
            _buildDeliveryStatus(),
            SizedBox(height: 20),
            _buildAmount(),
            SizedBox(height: 10),
            _buildButton(),
          ],
        ),
      ),
      itemCount: 3,
    );

Widget _buildWaitingOrder(BuildContext context) => ListView.builder(
      itemBuilder: (context, index) => Container(
        color: Colors.white,
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        child: Column(
          children: [
            _displayWarehouse(),
            SizedBox(height: 10),
            _buildOrderStatus(),
            SizedBox(height: 10),
            _displayProduct(),
            SizedBox(height: 10),
            _buildDeliveryStatus(),
            SizedBox(height: 20),
            _buildAmount(),
            SizedBox(height: 20),
          ],
        ),
      ),
      itemCount: 3,
    );

Widget _buildDeliveryOrder(BuildContext context) => ListView.builder(
      itemBuilder: (context, index) => Container(
        color: Colors.white,
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        child: Column(
          children: [
            _displayWarehouse(),
            SizedBox(height: 10),
            _buildOrderStatus(),
            SizedBox(height: 10),
            _displayProduct(),
            SizedBox(height: 10),
            _buildDeliveryStatus(),
            SizedBox(height: 20),
            _buildAmount(),
            SizedBox(height: 10),
            _buildButton(),
          ],
        ),
      ),
      itemCount: 3,
    );
