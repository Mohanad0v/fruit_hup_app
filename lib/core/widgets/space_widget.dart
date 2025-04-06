import 'package:flutter/cupertino.dart';
import 'package:fruit_hub/core/utils/size_config.dart';

class HorizintalSpace extends StatelessWidget {
  final double value;
  const HorizintalSpace(this.value);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value,
    );
  }
}
class VertecalSpace extends StatelessWidget {
  final double value;
  const VertecalSpace(this.value);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value,
    );
  }
}
