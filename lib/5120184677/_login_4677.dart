import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class login4677 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => TextFieldAndCheckPageState();
}

class TextFieldAndCheckPageState extends State<login4677> {
  TextEditingController phoneController = TextEditingController();

  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('用户登录'),
      ),
      body: Column(
        children: [
          TextField(
            controller: phoneController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              icon: Icon(Icons.phone),
              labelText: '请输入用户名',
              helperText: '请输入注册的手机号',
            ),
            autofocus: false,
          ),
          TextField(
            controller: passController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              icon: Icon(Icons.lock),
              labelText: '请输入密码',
            ),
            obscureText: true,
          ),
          RaisedButton(onPressed: _login,
          child: Text('登录'),
          ),
        ],
      ),
    );
  }

  void _login(){
    print({'phone': phoneController.text, 'password': passController.text});
    if (phoneController.text.length != 11) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('手机号码格式不对'),
          ));
    } else if (passController.text.length == 0) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('请填写密码'),
          ));
    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('登录成功'),
          ));
      phoneController.clear();
    }
  }

  void onTextClear() {
    setState(() {
      phoneController.clear();
      passController.clear();
    });
  }
}