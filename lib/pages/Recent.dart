import 'package:flutter/material.dart';

class Recent extends StatelessWidget {
  const Recent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             
              Text("Called Multiple Times"),
              Text("Show All"),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height*0.2,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
          itemCount:5,
            itemBuilder: (context,index)=>Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 55,
                child: Center(child: Text("$index"),),
              ),
            )
            ),
        ),
        Container(
          height: 200,
          color: Colors.green,
        ),
        for(int i=0;i<10;i++)
              ListTile(
                leading: CircleAvatar(),
                title: Text("Ram"),
                subtitle: Row(
                  children: [
                    Icon(Icons.call),
                    Icon(Icons.man_2),
                    Text("Incomimng"),
                    Text("19:43")
                  ],
                ),
                trailing:
                IconButton(onPressed: (){},icon:Icon(Icons.arrow_forward_ios)),
              ),
      ],
    );
  }
}