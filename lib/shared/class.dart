import 'package:flutter/material.dart';
import 'package:ghawejobapp/shared/themes.dart';

class mainCategory extends StatelessWidget {
  const mainCategory({
    Key? key,
    required this.category,
  }) : super(key: key);

  final String category;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextPreferences(text: category),
        const Spacer(),
        Text(
          'See All',
          style: TextStyle(
            fontSize: 12,
            color: primaryColor,
            decoration: TextDecoration.underline,
          ),
        )
      ],
    );
  }
}

class TextPreferences extends StatelessWidget {
  const TextPreferences({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Text(
            text,
            style: titleStyle.copyWith(fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}

class RecommendedJobCard extends StatelessWidget {
  const RecommendedJobCard({
    Key? key,
    required this.comp,
    required this.jobdesk,
    required this.require,
    required this.status,
    required this.image,
    required this.pressed,
  }) : super(key: key);

  final String comp, jobdesk, require, status, image;
  final Function pressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.only(top: 14, left: 30, bottom: 50),
        width: size.width * 0.47,
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(image),
            Container(
              padding: const EdgeInsets.all(20 / 2),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff14A800), width: 1),
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0x3b14A800)),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$comp\n'.toUpperCase(),
                          style: const TextStyle(
                              color: Color(0xff0A5200),
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '$jobdesk\n\n'.toUpperCase(),
                          style: Theme.of(context)
                              .textTheme
                              .button
                              ?.copyWith(fontSize: 12),
                        ),
                        TextSpan(
                          text: '$require'.toUpperCase(),
                          style: const TextStyle(
                              color: Color(0xff7B7B7B),
                              fontWeight: FontWeight.bold,
                              fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 23,
                    width: 45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xff46E9BC),
                    ),
                    child: Text(
                      '$status',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class JobList extends StatelessWidget {
  const JobList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedJobCard(
              image: 'assets/images/img_gojek.png',
              comp: 'Gojek',
              jobdesk: 'Back-end Dev.',
              require: 'Full Time',
              status: 'Open',
              pressed: () {}),
          RecommendedJobCard(
              image: 'assets/images/img_tokped.png',
              comp: 'Tokopedia',
              jobdesk: 'Project Mngr.',
              require: 'Full Time',
              status: 'Open',
              pressed: () {}),
          RecommendedJobCard(
              image: 'assets/images/img_grab2.png',
              comp: 'Grab',
              jobdesk: 'UI/UX Des.',
              require: 'Internship',
              status: 'Open',
              pressed: () {}),
        ],
      ),
    );
  }
}
