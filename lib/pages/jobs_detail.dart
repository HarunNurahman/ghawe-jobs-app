import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ghawejobapp/pages/screen/profile.dart';
import 'package:http/http.dart' as http;

class JobDetails extends StatefulWidget {
  int? value;
  JobDetails({Key? key, required this.value}) : super(key: key);

  @override
  State<JobDetails> createState() => _JobDetailsState(value);
}

class _JobDetailsState extends State<JobDetails> {
  int? value;
  _JobDetailsState(this.value);
  Map? data;
  String? uri;

  @override
  void initState() {
    var url = "https://arbeitnow.com/view/${value.toString()}";
    _getRefreshData(url);

    super.initState();
    print('${value}');
  }

  Future<void> _getRefreshData(url) async {
    getJsonData(context, url);
  }

  Future<void> getJsonData(BuildContext context, url) async {
    setState(() {
      url = url;
    });

    var response = await http.get(Uri.parse(uri.toString()),
        headers: {"Accept": "application/json"});
    print(response.body);
    setState(() {
      var convertDataToJson = json.decode(response.body);
      data = convertDataToJson['data'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: data == null
              ? Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.grey),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircularProgressIndicator(),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Loading ...",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                )
              : Container(
                  child: ListTile(
                    title: Text(data!["title"]),
                    subtitle: Text(data!["company_name"]),
                  ),
                )),
    );
  }
}
