import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_provider/second.dart';
import 'package:state_provider/third.dart';

void main()
{
  runApp(MaterialApp(home: MultiProvider(providers: [

    ChangeNotifierProvider(create: (context) => second(),),

    ChangeNotifierProvider(create: (context) => third(),),

  ],child: first(),)
  ));
}

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {

  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();

  @override
  Widget build(BuildContext context) {

    second c=Provider.of(context);
    third d=Provider.of(context);

    return Scaffold(

      appBar: AppBar(),

      body: Column(
        children: [

          TextField(
            controller: t1,

            decoration: InputDecoration(
              label: Text("Enter Number")
            ),
          ),

          TextField(
            controller: t2,

            decoration: InputDecoration(
                label: Text("Enter Number")
            ),
          ),

          ElevatedButton(onPressed: () {

            c.fun_sum(t1.text, t2.text);

            d.fun_sub(t1.text, t2.text);

          }, child: Text("Submit")),

          Text("Sum :- ${c.sum}"),
          Text("Sub :- ${d.sub}"),

        ],
      ),
    );
  }
}
