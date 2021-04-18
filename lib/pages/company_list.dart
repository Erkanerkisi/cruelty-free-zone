import 'package:cruelty_free_zone/core/company_name_search.dart';
import 'package:cruelty_free_zone/model/Company.dart';
import 'package:cruelty_free_zone/repository/company_repository.dart';
import 'package:flutter/material.dart';

class CompanyList extends StatefulWidget {
  final bool test;

  CompanyList({this.test});

  @override
  _CompanyListState createState() => _CompanyListState();
}

class _CompanyListState extends State<CompanyList> {
  CompanyRepository _companyRepository;
  List<String> data;

  @override
  void initState() {
    super.initState();
    _companyRepository = new CompanyRepository();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Companies"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: () async {
          final result = await showSearch<String>(
            context: context,
            delegate: CompanyNameSearch(data),
          );
          print(result);
        },
      ),
      body: Container(
        child: StreamBuilder(
          stream: _companyRepository.findList(widget.test),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            List<String> list = Company.of(snapshot).map((e) => e.name).toSet().toList();// HAHAHA
            data = list;
            return ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${list[index]}'),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
