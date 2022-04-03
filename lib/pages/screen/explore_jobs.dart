import 'package:flutter/material.dart';
import 'package:ghawejobapp/pages/jobs_detail.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ExploreJobs extends StatefulWidget {
  const ExploreJobs({Key? key}) : super(key: key);

  @override
  State<ExploreJobs> createState() => _ExploreJobsState();
}

class _ExploreJobsState extends State<ExploreJobs> {
  final String url = "https://arbeitnow.com/api/job-board-api";
  List? data;

  @override
  void initState() {
    _getRefreshData();
    super.initState();
  }

  Future<void> _getRefreshData() async {
    getJsonData(context);
  }

  Future<void> getJsonData(BuildContext context) async {
    var response =
        await http.get(Uri.parse(url), headers: {"Accept": "application/json"});
    print(response.body);
    setState(() {
      var convertDataToJson = json.decode(response.body);
      data = convertDataToJson['data'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _getRefreshData,
        child: data == null
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: data == null ? 0 : data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  JobDetails(value: data![index]['slugs'])));
                    },
                    child: Card(
                      child: ListTile(
                        leading: const Icon(Icons.home_work_outlined),
                        title: Text(data![index]['title']),
                        subtitle: Text(data![index]['company_name']),
                        trailing: Text(data![index]['location']),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
