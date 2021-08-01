import 'package:hovering/hovering.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Header extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10,bottom: 15,left: 10,right: 10),
      width: double.infinity,
     decoration: BoxDecoration(
       gradient: LinearGradient(
         colors: [
           // Colors.grey.shade300,
           // Colors.black87,
           Color(0xff4B79A1),
           Color(0xff283E51),
         ]
       )
     ),
      child: ResponsiveGridRow(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          //////////////////////////////////////////////////may name
          ResponsiveGridCol(
            lg: 1,
            sm: 2,
            xs: 12,
            md: 1,
            child: _showText(),

          ),

          //////////////////////////////////////////////// menus

          ResponsiveGridCol(
            lg: 4,
            xs: 10,
            sm: 4,
            md: 4,
            child: _showTopMenus(),
          ),

          //////////////////////////////////////////////// Search
          ResponsiveGridCol(
            lg: 4,
            xs: 12,
            sm: 4,
            md: 4,
            child: _showSearchBox(),
          ),


          ResponsiveGridCol(
            lg: 2,
            xs: 12,
            sm: 2,
            md: 3,
            child: _loginRegister(),
          ),
        ],
      ),
      
    );
  }

   _showText() {

    return Container(
      child: Text("مرتضی",style: TextStyle(fontSize: 20,color: Colors.deepOrange,fontWeight: FontWeight.w900),),
    );
  }


  _showTopMenus() {
    return Container(
      child:Wrap(
        alignment: WrapAlignment.spaceAround,
        children: [

          _itemMenus(title:'مقالات'),
          _itemMenus(title:'درباره'),
          _itemMenus(title:'تماس '),
          _itemMenus(title:'آدرس'),
        ],
      ) ,
    ) ;
  }

  _itemMenus({ required String title}) {
    return HoverButton(
      onpressed: (){},
      hoverColor: Colors.deepPurple,
      hoverTextColor: Colors.white,
     highlightColor: Colors.redAccent,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:10),

        child: Text(title,
          style: TextStyle(
            color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600),),),
    );
  }

   _showSearchBox() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'سرچ در كل محتوا ...',
            hintStyle: TextStyle(fontSize: 12),
          prefixIcon: Icon(Icons.search_sharp,color: Colors.red,)
        ),
      ),
    ) ;
  }

  _loginRegister() {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 6),
        width: 200,
        child: Wrap(
          alignment: WrapAlignment.spaceAround,
          children: [

            _userButton(textColor:Colors.white,color:Colors.red,label:'ورود'),
            _userButton(textColor:Colors.black,color:Colors.amber,label:'ثبت نام'),

          ],

        ),
      ),
    );
  }

  _userButton({required Color textColor,required MaterialColor color,required String label}) {
    return MouseRegion(
      child: MaterialButton(
        color: color,
        child: Text(label,style: TextStyle(color: textColor),),
          onPressed: ()=>print('click')
      ),
    );
  }
}

