import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_ui/constants.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Color(0xff19191B)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: FadeIn(
                duration: const Duration(milliseconds: 900),
                child: Container(
                  height: screenHeight * 0.5,
                  width: screenWidth,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/movie-posters/img-eternals.jpg",
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                top: screenHeight * 0.05,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 21.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 3,
                              color: Colors.white,
                            )),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: SvgPicture.asset(Constants.kIconBack)),
                      ),
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 3,
                              color: Colors.white,
                            )),
                        child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(Constants.kIconMenu)),
                      ),
                    ],
                  ),
                )),
            Positioned(
              right: 9,
              top: screenHeight * 0.42,
              child: Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Constants.kPinkColor,
                        Constants.kGreenColor,
                      ],
                    )),
                child: Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Constants.kGreyColor.withOpacity(0.8)),
                  child: SvgPicture.asset(Constants.kIconPlay),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: screenHeight * 0.5,
                transform:
                    Matrix4.translationValues(0, -screenHeight * 0.05, 0),
                child: SizedBox(
                  width: screenWidth * 0.7,
                  child: Column(
                    children: [
                      Text(
                        "Eternals",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Constants.kWhiteColor.withOpacity(0.85),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight <= 667 ? 10 : 20,
                      ),
                      Text(
                        "2021|Action-Adventure-Fantasy|2h36m",
                        style: TextStyle(
                            fontSize: 13,
                            color: Constants.kWhiteColor.withOpacity(0.75)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      RatingBar.builder(
                        itemSize: 18,
                        initialRating: 3,
                        minRating: 0,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Constants.kYellowColor,
                        ),
                        onRatingUpdate: (rating) {
                          debugPrint(rating.toString());
                        },
                        unratedColor: Constants.kWhiteColor,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "The saga of the Eternals, a race of\nimmortal beings who lived on Earth\nand shaped its history and civilizations",
                        textAlign: TextAlign.center,
                        maxLines: screenHeight <= 667 ? 2 : 4,
                        style: TextStyle(
                            fontSize: 14,
                            color: Constants.kWhiteColor.withOpacity(0.75)),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Container(
                        height: 2,
                        width: screenWidth * 0.8,
                        color: Constants.kWhiteColor.withOpacity(0.15),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 23),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  "Casts",
                                  style: TextStyle(
                                    color: Constants.kWhiteColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screenHeight <= 667 ? 10 : 18,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.orange,
                                  minRadius: 16,
                                  maxRadius: screenWidth <= 375 ? 24 : 30,
                                  backgroundImage: const NetworkImage(
                                      "https://m.media-amazon.com/images/M/MV5BODg3MzYwMjE4N15BMl5BanBnXkFtZTcwMjU5NzAzNw@@._V1_.jpg"),
                                ),
                                Expanded(
                                  child: Container(
                                    // constraints: const BoxConstraints(
                                    //   maxHeight: 50,
                                    //   maxWidth: 112,
                                    // ),
                                    height: 50,
                                    width: 112,
                                    transform:
                                        Matrix4.translationValues(-6, 0, 0),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Image.asset(Constants.kMaskCast),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 16),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Angelina\nJolie",
                                              style: TextStyle(
                                                  color: Constants.kWhiteColor,
                                                  fontSize: 13),
                                              maxLines: 2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.orange,
                                  minRadius: 16,
                                  maxRadius: screenWidth <= 375 ? 24 : 30,
                                  backgroundImage: const NetworkImage(
                                      "https://m.media-amazon.com/images/M/MV5BODg3MzYwMjE4N15BMl5BanBnXkFtZTcwMjU5NzAzNw@@._V1_.jpg"),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    width: 112,
                                    transform:
                                        Matrix4.translationValues(-6, 0, 0),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Image.asset(Constants.kMaskCast),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 16),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Angelina\nJolie",
                                              style: TextStyle(
                                                  color: Constants.kWhiteColor,
                                                  fontSize: 13),
                                              maxLines: 2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.orange,
                                  minRadius: 16,
                                  maxRadius: screenWidth <= 375 ? 24 : 30,
                                  backgroundImage: const NetworkImage(
                                      "https://m.media-amazon.com/images/M/MV5BODg3MzYwMjE4N15BMl5BanBnXkFtZTcwMjU5NzAzNw@@._V1_.jpg"),
                                ),
                                Expanded(
                                  child: Container(
                                    // constraints: const BoxConstraints(
                                    //   maxHeight: 50,
                                    //   maxWidth: 112,
                                    // ),
                                    height: 50,
                                    width: 112,
                                    transform:
                                        Matrix4.translationValues(-6, 0, 0),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Image.asset(Constants.kMaskCast),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 16),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Angelina\nJolie",
                                              style: TextStyle(
                                                  color: Constants.kWhiteColor,
                                                  fontSize: 13),
                                              maxLines: 2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.orange,
                                  minRadius: 16,
                                  maxRadius: screenWidth <= 375 ? 24 : 30,
                                  backgroundImage: const NetworkImage(
                                      "https://m.media-amazon.com/images/M/MV5BODg3MzYwMjE4N15BMl5BanBnXkFtZTcwMjU5NzAzNw@@._V1_.jpg"),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    width: 112,
                                    transform:
                                        Matrix4.translationValues(-6, 0, 0),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Image.asset(Constants.kMaskCast),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 16),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Angelina\nJolie",
                                              style: TextStyle(
                                                  color: Constants.kWhiteColor,
                                                  fontSize: 13),
                                              maxLines: 2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
