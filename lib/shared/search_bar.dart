import 'package:flutter/material.dart';
import 'package:ghawejobapp/shared/config.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: TextFormField(
              enableSuggestions: false,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  color: kPrimaryColor,
                ),
                contentPadding: const EdgeInsets.only(top: 11),
                hintText: widget.text,
                hintStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w200,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                // focusedBorder: OutlineInputBorder(
                //   borderSide: BorderSide(color: kPrimaryColor),
                //   borderRadius: BorderRadius.circular(10),
                // ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            child: Image.asset(
              'assets/icons/ic_filter.png',
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
