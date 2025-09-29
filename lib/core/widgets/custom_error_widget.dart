import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/widgets.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessege});

  final String errorMessege;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errorMessege , style: Styles.textStyle14,));
  }
}
