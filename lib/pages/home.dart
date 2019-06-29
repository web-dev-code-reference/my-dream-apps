import 'package:flutter/material.dart';
import 'package:dreamapp/pages/screens/addapp.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int count=0;

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        title: new Text('My Dream Apps'),
        leading: Icon(Icons.ac_unit),
      ),
      body:  dreamappsvew(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addApp();
        },
        child: Icon(Icons.dashboard),
      ),
    );
  }

  void addApp() {
    // print('addapp');
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AddApp();
    }));
  }


 ListView dreamappsvew(){
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position){
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(backgroundColor: Colors.white, child: Icon(Icons.delete, color: Colors.grey,),),
            						title: Text('Dummy title', ),
						subtitle: Text('dummy Date'),
						trailing: Icon(Icons.delete,color:Colors.grey,),
						
          ),
        );
      },
    );
  }

}
