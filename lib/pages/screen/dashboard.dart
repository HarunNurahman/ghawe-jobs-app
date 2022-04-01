import 'package:flutter/material.dart';
import 'package:ghawejobapp/shared/themes.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                header(),
                // const SizedBox(height: 24),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container header() {
    return Container(
      width: double.infinity,
      height: 120,
      padding: const EdgeInsets.all(30),
      child: Row(
        children: [
          Image.asset(
            'assets/images/img_profile.png',
            height: 55,
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              Text(
                'Harun Nurahman',
                style: titleStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 2),
              Text('Mobile Developer',
                  style: subtitleStyle.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w300)),
            ],
          ),
          const Spacer(),
          const Icon(Icons.notifications_outlined, color: Colors.white),
        ],
      ),
    );
  }
}

// Container(
//   width: double.infinity,
//   height: 120,
//   padding: EdgeInsets.all(30),
//   child: Row(
//     children: [
//       Image.asset('assets/images/img_profile.png', height: 56),
//       const SizedBox(width: 12),
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const SizedBox(height: 12),
//           Text(
//             'Harun Nurahman',
//             style: titleStyle.copyWith(
//               fontWeight: FontWeight.w600,
//               color: Colors.white,
//             ),
//           ),
//           const SizedBox(height: 4),
//           Text(
//             'Mobile Developer',
//             style: subtitleStyle.copyWith(
//               fontWeight: FontWeight.w300,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       )
//     ],
//   ),
// )



// child: Container(
//   padding: const EdgeInsets.symmetric(horizontal: 20),
//   margin: const EdgeInsets.symmetric(horizontal: 20),
//   height: 50,
//   decoration: BoxDecoration(
//     color: Colors.white,
//     border: Border.all(
//       color: const Color(0xFFC4C4C4),
//     ),
//     borderRadius: BorderRadius.circular(10),
//   ),
//   child: Row(
//     children: <Widget>[
//       Expanded(
//         child: TextField(
//           onChanged: (value) {},
//           decoration: InputDecoration(
//             hintText: 'Search Jobs or Positions',
//             hintStyle: txtFieldStyle,
//             border: InputBorder.none,
//             focusedBorder: InputBorder.none,
//           ),
//         ),
//       ),
//       const Icon(Icons.search_outlined),
//     ],
//   ),
// ),