import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_ui/constants.dart';

class SearchFieldWidget extends StatelessWidget {
  final EdgeInsetsGeometry padding;

  const SearchFieldWidget({required this.padding, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          color: Constants.kGreyColor.withOpacity(0.12),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SvgPicture.asset(Constants.kIconSearch),
            ),
            Expanded(
              child: TextField(
                style: TextStyle(
                    color: Constants.kWhiteColor.withOpacity(0.6),
                    fontSize: 17,
                    letterSpacing: -0.41),
                decoration: InputDecoration(
                  hintText: "Search",
                  isDense: true,
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      color: Constants.kWhiteColor.withOpacity(0.6),
                      fontSize: 17,
                      letterSpacing: -0.41),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SvgPicture.asset(Constants.kIconMic),
            ),
          ],
        ),
      ),
    );
  }
}
