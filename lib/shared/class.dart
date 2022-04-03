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
            fontSize: 14,
            color: primaryColor,
            decoration: TextDecoration.underline,
          ),
        )
      ],
    );
  }
}

class secondCategory extends StatelessWidget {
  const secondCategory({
    Key? key,
    required this.category,
  }) : super(key: key);

  final String category;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextPreferences(text: category),
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
            style:
                titleStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 18),
          )
        ],
      ),
    );
  }
}

class UsernamePreferences extends StatelessWidget {
  const UsernamePreferences({
    Key? key,
    required this.email,
  }) : super(key: key);

  final String email;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Text(
            email,
            style: titleStyle.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontSize: 18,
            ),
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
    required this.require1,
    required this.require2,
    required this.applicants,
    required this.status,
    required this.image,
    required this.pressed,
  }) : super(key: key);

  final String comp, jobdesk, require1, require2, status, image, applicants;
  final Function pressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Container(
        width: size.width * 0.5,
        height: size.height * 0.3,
        margin: const EdgeInsets.only(right: 14, top: 12),
        padding: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: primaryColor),
        ),
        child: Row(
          children: [
            Container(
              height: size.height * 0.25,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    image,
                    width: 64,
                    height: 64,
                  ),
                  const SizedBox(height: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        jobdesk.toUpperCase(),
                        style: titleStyle.copyWith(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '$comp\n'.toUpperCase(),
                        style: titleStyle.copyWith(
                          color: primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '$applicants\n'.toUpperCase(),
                        style: titleStyle.copyWith(
                          color: Color(0xFF7B7B7B),
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 12),
                            height: size.height * 0.04,
                            width: size.width * 0.2,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xFFF2F2F2),
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              require1.toUpperCase(),
                              style: titleStyle.copyWith(
                                  color: Color(0xff7B7B7B),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Container(
                            margin: EdgeInsets.only(bottom: 12),
                            height: size.height * 0.04,
                            width: size.width * 0.2,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xFFF2F2F2),
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              require2.toUpperCase(),
                              style: titleStyle.copyWith(
                                  color: Color(0xff7B7B7B),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
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
              jobdesk: 'Back-end Developer',
              applicants: '100 Applicants',
              require1: 'Full Time',
              require2: 'Remote',
              status: 'Open',
              pressed: () {}),
          RecommendedJobCard(
              image: 'assets/images/img_tokped.png',
              comp: 'Tokopedia',
              jobdesk: 'Project Manager',
              applicants: '100 Applicants',
              require1: 'Full Time',
              require2: 'Remote',
              status: 'Open',
              pressed: () {}),
          RecommendedJobCard(
              image: 'assets/images/img_grab2.png',
              comp: 'Grab',
              jobdesk: 'UI/UX Designer',
              applicants: '100 Applicants',
              require1: 'Full Time',
              require2: 'Remote',
              status: 'Open',
              pressed: () {}),
        ],
      ),
    );
  }
}
