import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User_App"),backgroundColor: Colors.red,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        child:  FutureBuilder(
          future: Service().fetching(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              List<dynamic>?_data=snapshot.data;
              return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1),
                itemCount: _data!.length,
                itemBuilder: (context,index){
                  return TodoWidget(user:_data[index]);
                },
              );

            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}


class TodoWidget extends StatefulWidget {
  User user;
  TodoWidget({required this.user});

  @override
  State<TodoWidget> createState() => _TodoWidgetState();
}

class _TodoWidgetState extends State<TodoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.1,
      width: MediaQuery.of(context).size.width*0.2,
      decoration: BoxDecoration(color: Colors.cyan,borderRadius: BorderRadius.circular(5)),
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed('/ran', arguments:{
                'Email':"${widget.user.email}",
                'username':"${widget.user.id}"
              } );
            },
            child: Column(
              children: [
                Text("Username: ${widget.user.username}", overflow: TextOverflow.ellipsis,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class User {
  int id;
  String name;
  String username; // Use camelCase for variable names
  String email;

  User(
      {required this.id, required this.name, required this.username, required this.email});

}

class Service{
  Future<List> getApi() async {
    String url = "https://jsonplaceholder.typicode.com/users";
    Response response = await get(Uri.parse(url));
    dynamic decodedresponse = jsonDecode(response.body);
    return decodedresponse;
  }

  Future<List<User>> getdata(List<dynamic> list) async {
    List<User> _list = [];
    for (Map<String, dynamic>json in list) {
      User user=User(id: json['id'], name:json['name'], username:json['username'], email:json['email']);
      _list.add(user);
    }
    return _list;
  }

  Future<List<User>> fetching() async{
    List<dynamic> data1 = await getApi();
    List<User> data = await getdata(data1);
    return data;
  }
}
class UserDetails extends StatefulWidget {
  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context){
    final arguments = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    return Center(
      child: Container(
        color: Colors.cyan,
        height: MediaQuery.of(context).size.height*0.2,
        width: MediaQuery.of(context).size.width*0.4,
        margin: EdgeInsets.all(10),
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Email: ${arguments['Email']}", style: TextStyle(fontSize: 10),),
          ],
        ),
      ),
    );
  }
}