import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  final String? title;
  final Function? validate;
  final Function? onSave;
  final TextEditingController? priceController;
  final int maxLine;
  final double fontSize;
  final bool enabeld;
  final String initialValue;

  final TextInputType? keyboardType ;
  CustomTextField({this.title,this.keyboardType=TextInputType.text,this.validate,
    this.onSave,this.priceController,this.maxLine=1,
    this.enabeld=true,
    this.initialValue="",this.fontSize=20

  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,

      padding: const EdgeInsets.all(8.0),
      child: TextFormField(

        initialValue: initialValue,
        enabled: enabeld,
        maxLines: maxLine,
        controller: priceController,
        validator: validate as String? Function(String?)?,
        onSaved: onSave as void Function(String?)?,
        keyboardType: keyboardType,
        style: TextStyle(
            fontSize: fontSize
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          fillColor: Colors.white,
            filled: true,
            labelText: title ,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:  BorderSide(
                    color: Get.theme.primaryColor
            )),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                    color: Colors.black, width: 1.0)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                    color: Colors.black, width: 1.0)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
