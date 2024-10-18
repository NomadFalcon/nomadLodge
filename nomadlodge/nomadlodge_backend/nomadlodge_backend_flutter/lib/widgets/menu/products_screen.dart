import 'package:flutter/material.dart';
import '../../serverpod_client.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';
import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';

class ProductScreen extends StatefulWidget {

  const ProductScreen(
      {Key? key, required this.currentUser})
      : super(key: key);

  final User currentUser;
  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool isExpanded = false;

  List<Location> locations = [];

  @override
  void initState() {
    //getLocations();
    super.initState();
  }

  void getLocations() {
    client.location.getAll(widget.currentUser).then((value) {
      setState(() {
        locations = value;
      });
    });
  }

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo.shade400,
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          height: MediaQuery.of(context).size.height * 0.8,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20),
          child: (locations.isNotEmpty) ? ListView.builder(
            itemBuilder: (BuildContext context, int index) { 
              return ListTile(
                title: Text(locations[index].name),
                subtitle: Text(locations[index].longDescription),
              );
             },
          ) : Text("There are no products to show"),
          
        ),
        floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.indigo,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () {
                  WoltModalSheet.show(
                    context: context,
                    modalTypeBuilder: (context) {
                      return WoltModalType.dialog();
                    },
                    pageListBuilder: (bottomSheetContext) => [
                      SliverWoltModalSheetPage(
                        mainContentSliversBuilder: (context) => [
                          SliverList.builder(
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text('Index is $index'),
                                onTap: Navigator.of(bottomSheetContext).pop,
                          );
                        },
                      ),
                    ],
                  )
                ],
              );
            },
              )
            );
  }
}

