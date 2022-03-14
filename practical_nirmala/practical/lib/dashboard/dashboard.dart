import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:substring_highlight/substring_highlight.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({Key? key}) : super(key: key);

  @override
  _DashBoardViewState createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add a recurring post"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5,right: 10),
            child: Text(
              "STEP 2: Compose your post",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 5,right: 10),
            child: SubstringHighlight(
                text:
                    'This post will be stored in your " My blog Posts" library. ',
                term: "My blog Posts",
                textStyle: TextStyle(
                  color: Colors.black,
                ),
                textStyleHighlight: TextStyle(
                  color: Colors.red,
                )),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 5,right: 10),
            child: Text(
              "Write a Post",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 32,
                      padding: EdgeInsets.all(5),
                      decoration:
                      BoxDecoration(border: Border(top: BorderSide(color: Colors.grey),left: BorderSide(color: Colors.grey))),
                      child: Center(
                        child: Text(
                          "Original",
                          style: TextStyle(color: Colors.cyan),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Image.network("https://www.pngitem.com/pimgs/m/1-13683_pinterest-black-icon-png-image-free-download-searchpng.png",height: 20,width: 20,)
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                      child:Image.network("https://user-images.githubusercontent.com/338885/46033761-94f4e300-c0c4-11e8-8519-8aa113cb1104.png",height: 20,width: 20),
                      ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                      child:Image.network("https://i.pinimg.com/originals/cb/dc/55/cbdc55c58f040ec0b930723dde8b7042.jpg",height: 20,width: 20,)
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Image.network("https://png.pngtree.com/png-vector/20191107/ourmid/pngtree-twitter-icon-design-vector-png-image_1966552.jpg",height: 20,width: 20,),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Image.network("https://i.pinimg.com/736x/63/9b/3d/639b3dafb544d6f061fcddd2d6686ddb.jpg",height: 20,width: 20,)
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Image.network("https://static.vecteezy.com/system/resources/previews/003/692/704/large_2x/linkedin-american-business-logo-social-media-icon-black-pictogram-illustration-isolated-on-white-backgroud-free-vector.jpg",height: 20,width: 20,)
                    ),

                  ],
                ),
                TextFormField(
                    minLines: 10,
                    maxLines: 10,
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(
                            color: Colors.grey, width: 0.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(
                            width: 1, color: Colors.grey),
                      ),
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      border: OutlineInputBorder(),

                  ),

                ),
                SizedBox(height: 30,),
                Stack(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage("https://www.keralatourism.org/images/sitemap/hills20201130111903.jpg")
                          )
                      ),
                    ),
                    Positioned(right: 0,child: CircleAvatar(backgroundColor: Colors.red,child: Icon(Icons.close,size: 10,color: Colors.black,),maxRadius: 10,))
                  ],
                ),

              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.only(top: 20,bottom: 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey)
            ),
            child: Row(
              children: [
                SizedBox(width: 15,),
                Icon(Icons.photo,color: Colors.grey,),
                SizedBox(width: 15,),
                Icon(Icons.camera,color: Colors.grey,),
                SizedBox(width: 15,),
               Text("#",style: TextStyle(fontSize: 22,color: Colors.grey),),
                SizedBox(width: 15,),
                Icon(Icons.visibility,color: Colors.cyan,),
                Spacer(

                ),
                Text("ADD TO LIBRARY",style: TextStyle(fontSize: 14,color: Colors.grey),),
                SizedBox(width: 15,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
