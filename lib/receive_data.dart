import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/data.dart';

class ReceiveData extends StatelessWidget {
  const ReceiveData({super.key});

  @override
  Widget build(BuildContext context) {
    final providerdata=Provider.of<Data>(context);//variable for provider
    return Scaffold(
      body: Center(
        child: Text(providerdata.value.toString(),style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}