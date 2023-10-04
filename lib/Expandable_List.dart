import 'package:flutter/material.dart';

class ExpandableList extends StatefulWidget {
  const ExpandableList({super.key});

  @override
  State<ExpandableList> createState() => _ExpandableListState();
}

class _ExpandableListState extends State<ExpandableList> {
  List<String> NAME = ['JAN','FEB','MAR','APR','MAY','JUN','JULY','AUG','SEP','OCT','NOV','DEC'];
  List<String> COUNTRY = ['PKR','CANADA','USA','UAE','UK','IRAN','IND','IRAQ'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expandable List Vieew',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: ListView.builder(
                  itemCount: NAME.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ExpansionTile(
                        title: Text(NAME[index].toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        children: [
                          Container(
                            height:150,
                            child: ListView.builder(
                                itemCount:COUNTRY.length,
                                itemBuilder: (context,index){
                              return ListTile(title: Text(COUNTRY[index].toString(),style: TextStyle(color: Colors.green),),);
                            }),
                          )
                        ],
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}