import 'package:flutter/cupertino.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';

class CatlogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl4.bold.color(MyTheme.darkBluishColor).make(),
        "Trending Products".text.xl.make(),
      ],
    );
  }
}
