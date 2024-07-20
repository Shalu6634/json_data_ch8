import 'package:flutter/material.dart';
import 'package:json_data_ch8/screen/8.1%20Json%20Parsing/userData/provider/user_provider.dart';
import 'package:provider/provider.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('User Data'),
        elevation: 2,
        shadowColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: userProvider.userList.length,
        itemBuilder: (context, index) => ListTile(leading: Text('${userProvider.userList[index].id}'),
          title: Text('${userProvider.userList[index].name}'),
          subtitle: Text('${userProvider.userList[index].company.name}'),
          trailing: Text('${userProvider.userList[index].website}')
          // Text('${userProvider.userList[index].name  +   " " +  userProvider.userList[index].address.zipcode}'),
        ),
      ),
    );
  }
}
