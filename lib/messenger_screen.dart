
import 'package:flutter/material.dart';


class MessengerScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
         elevation: 0.0,
         title: Row(
           children: [

             Container(
               decoration: const BoxDecoration(
                 shape: BoxShape.circle,
                 color: Colors.grey,
               ),
               child: const CircleAvatar(
                 radius: 20.0,
                 backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2021/11/12/03/04/woman-6787784_1280.png'),
               ),
             ),
             const SizedBox(
               width: 10,
             ),
             const Text(
             'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
           ),
           ],
         ),
         actions: [
           IconButton(onPressed: (){}, icon:
           const CircleAvatar(
             radius: 20.0,
             child: Icon(
               size: 20,
                 Icons.camera
             ),

           ),
           ),
           IconButton(onPressed: (){}, icon:
           const CircleAvatar(
             radius: 20.0,
             child: Icon(
                 size: 20,
                 Icons.edit
             ),

           ),
           )
         ],
       ),
      body:
         SingleChildScrollView(
           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   padding: EdgeInsetsDirectional.all(7),
                   decoration: BoxDecoration(
                     color:Colors.grey.withAlpha(300) ,
                     borderRadius: BorderRadius.circular(15),
                   ),
                   child: Row(
                     children: const [
                       Icon(
                         Icons.search
                       ),
                       Text('Search'),
                     ],
                   ),
                 ),
               ),
              Container(
                height:  100,
                child: ListView.separated(
                  shrinkWrap: true,
                    itemBuilder: (context, index) => StoryItemBuilder(),
                    itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(width: 10,),
                ),
              ),
               ListView.separated(
                 shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),
                 itemBuilder: (context, index) => chatItemBuilder(),
                 itemCount: 20,
                 scrollDirection: Axis.vertical,
                 separatorBuilder: (context, index) => SizedBox(height: 20,),
               ),
              ]
           ),
         ),


         backgroundColor: Colors.white,

  );

  }

  Widget StoryItemBuilder() => Container(
    width: 60,
    child: Column(
      children: const[
        CircleAvatar(
          backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2021/11/12/03/04/woman-6787784_1280.png'),
          radius: 30,
        ),
        Text(
          'Nourhan hosny',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
          ),
        ),

      ],
    ),
  );
  Widget chatItemBuilder() => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
            ),
            child: const CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2016/08/20/05/36/avatar-1606914_1280.png'),
            ),
          ),
          Container(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3,
              end: 3,
            ),
            child: const CircleAvatar(
              radius: 5.0,
              backgroundColor: Colors.green,
            ),
          )
        ],
      ),
      SizedBox(
        width: 10,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lily Mostafa',
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Flexible(
                  child: Text(
                    'Hello Mamy',
                    maxLines: 2,
                    overflow:TextOverflow.ellipsis ,
                  ),
                ),
                Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(5.0),
                      color: Colors.black
                  ),
                ),
                Text('10:0 0PM'),
              ],
            ),
          ],
        ),
      ),
    ],
  );

}
