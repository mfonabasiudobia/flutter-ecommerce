import 'package:flutter/material.dart';
import 'package:ready_ecommerce/models/eCommerce/category/category.dart';
import 'package:ready_ecommerce/views/eCommerce/products/layouts/products_layout.dart';

class EcommerceProductsView extends StatelessWidget {
  final int? categoryId;
  final String categoryName;
  final String? sortType;
  final int? subCategoryId;
  final String? shopName;
  final List<SubCategory>? subCategories;
  final String? type;

  const EcommerceProductsView({
    Key? key,
    required this.categoryId,
    required this.categoryName,
    required this.sortType,
    this.subCategoryId,
    this.shopName,
    this.subCategories,
    this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as List<dynamic>?;

    final int? categoryId = args?[0] as int?;
    final String categoryName = args?[1] as String? ?? '';
    final String? sortType = args?[2] as String?;
    final int? subCategoryId = args?[3] as int?;
    final String? shopName = args?[4] as String?;
    final List<SubCategory>? subCategories = args?[5] as List<SubCategory>?;
    final String type = args?.length == 7 ? args![6] as String : 'default';

    return EcommerceProductsLayout(
      categoryId: categoryId,
      categoryName: categoryName,
      sortType: sortType,
      subCategoryId: subCategoryId,
      shopName: shopName,
      subCategories: subCategories,
      type: type,
    );
  }
}
