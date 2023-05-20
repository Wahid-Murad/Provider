import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/data.dart';
import 'package:provider_app/receive_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {

      final providerdata=Provider.of<Data>(context);//variable for provider

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(providerdata.value.toString(),style: TextStyle(fontSize: 20),
              ),
             
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  width: 80,
                  height: 40,decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(onPressed: (){
                   providerdata.Increment();
                  }, child: Text('Add',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  width: 80,
                  height: 40,decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(onPressed: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ReceiveData()));
                  }, child: Text('Next',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}