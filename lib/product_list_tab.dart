import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'product_row_item.dart';
import 'model/app_state_model.dart';

class ProductListTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        final products = model.getProducts();  // NEW
        return CustomScrollView(
          semanticChildCount: products.length, // NEW
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('Cupertino Store'),
            ),

            SliverSafeArea(  // BEGINNING OF NEW CONTENT
              top: false,
              minimum: const EdgeInsets.only(top: 8),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                      (context, index) {
                    if (index < products.length) {
                      return ProductRowItem(
                        index: index,
                        product: products[index],
                        lastItem: index == products.length - 1,
                      );
                    }

                    return null;
                  },
                ),
              ),
            )
          ],
        );
      },
    );
  }
}