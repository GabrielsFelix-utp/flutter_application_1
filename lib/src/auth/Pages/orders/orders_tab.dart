import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/auth/Pages/orders/components/order_tile.dart';
import 'package:flutter_application_1/src/auth/config/app_data.dart' as appData;

class OdersTab extends StatelessWidget {
  const OdersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedidos'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (_, index) => const SizedBox(height: 10),
        itemBuilder: (_, index) => OrderTile(order: appData.orders[index]),
        itemCount: appData.orders.length,
      ),
    );
  }
}
