import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/constant.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem( {super.key , this.color} );
  final Color? color ; 
  @override
  Widget build(BuildContext context) {
    return Container(
                decoration: BoxDecoration(
                  color: color == null ?  Color(0xffFFCC80) : color,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: EdgeInsets.only(left: 24 , top: 24 , bottom: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: ListTile(
                        title:Text("Flutter Testing" , style: TextStyle(fontSize: 26 , color: kPrimaryColor ),) ,
                        subtitle: Padding(
                          padding: const EdgeInsets.only(
                            top: 18
                          ),
                          child: SizedBox(width:200 , child: Text("Build Your Carer With Tharwat Samy." , style: TextStyle(fontSize: 15 , color: kPrimaryColor.withValues(alpha: .4)), maxLines: 2,)),
                        ),
                        trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete , size: 32  , color: kPrimaryColor,)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Text(DateFormat.yMMMEd().format(DateTime.now()) , style: TextStyle(fontSize: 16 , color:kPrimaryColor.withValues(alpha: .4) ),),
                    ) ,
                  ],
                ),
              );
  }
}
