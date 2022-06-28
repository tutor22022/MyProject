import 'package:flutter/material.dart';

void main() {
  runApp(CreateTe());
}

class CreateTe extends StatelessWidget {
  int _currentIndex = 1;
  TextEditingController name = new TextEditingController();
  TextEditingController last_name = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController phone_number = new TextEditingController();
  TextEditingController adress = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController confirm_the_password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 114, 208, 119),
       /* actions: [
           IconButton(icon:Icon(Icons.navigate_next_rounded)),
        ],*/
        title: Center(
          child: Text('انشاء حساب '),
          
        ),
      ),
      body: 
      
      
      SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              
             Container(
                padding: EdgeInsets.only(right: 20, left: 20, top: 30,),
             
               
                child:
                Icon(Icons.account_circle_rounded,size: 50,color: Colors.green,),
             ),
              Container(
                padding: EdgeInsets.only(right: 20, left: 20, top: 30),
               
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'الاسم الاول ',
                    //helperStyle: TextStyle(color: Color.fromARGB(255, 12, 202, 85), fontSize: 20),
                    prefixIcon: Icon(Icons.account_box_sharp),
                    enabledBorder: OutlineInputBorder(
                      
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Color.fromARGB(255, 34, 204, 65)),
                    ),
                    focusedBorder:OutlineInputBorder(
                      
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Color.fromARGB(255, 218, 34, 34)),
                    ),
                    
                  ),
                  controller: name,
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 20, left: 20, top: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'الاسم الاخير',
                    helperStyle: TextStyle(color: Colors.red),
                    prefixIcon: Icon(Icons.account_box_sharp),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Color.fromARGB(255, 34, 204, 65)),
                    ),
                     focusedBorder:OutlineInputBorder(
                      
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Color.fromARGB(255, 218, 34, 34)),
                    ), 
                    
                  ),
                  controller: last_name,
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 20, left: 20, top: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'البريد الاكتروني ',
                    helperStyle: TextStyle(color: Colors.red, fontSize: 20),
                    prefixIcon: Icon(Icons.email_outlined),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Color.fromARGB(255, 34, 204, 65)),
                    ),
                     focusedBorder:OutlineInputBorder(
                      
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Color.fromARGB(255, 218, 34, 34)),
                    ), 
                  ),
                  keyboardType: TextInputType.emailAddress,
                  controller: email,
                ),
              ),
              Container(
                  padding: EdgeInsets.only(right: 20, left: 20, top: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'رقم الهاتف',
                      helperStyle: TextStyle(color: Colors.red, fontSize: 20),
                      prefixIcon: Icon(Icons.add_call),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Color.fromARGB(255, 34, 204, 65)),
                      ),
                       focusedBorder:OutlineInputBorder(
                      
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Color.fromARGB(255, 218, 34, 34)),
                    ), 
                    ),
                    keyboardType: TextInputType.number,
                    controller: phone_number,
                  )),
              Container(
                  padding: EdgeInsets.only(right: 20, left: 20, top: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'مكان الاقامه',
                      helperStyle: TextStyle(color: Colors.red, fontSize: 20),
                      prefixIcon: Icon(Icons.home),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Color.fromARGB(255, 34, 204, 65)),
                      ),
                       focusedBorder:OutlineInputBorder(
                      
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Color.fromARGB(255, 218, 34, 34)),
                    ), 
                     
                    ),
                    controller: adress,
                  )),
              Container(
                  padding: EdgeInsets.only(right: 20, left: 20, top: 5),
                  margin: EdgeInsets.symmetric(vertical: 1),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'كلمة المرور ',
                      helperStyle: TextStyle(color: Colors.red, fontSize: 20),
                      prefixIcon: Icon(Icons.vpn_key),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Color.fromARGB(255, 34, 204, 65)),
                      ),
                       focusedBorder:OutlineInputBorder(
                      
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Color.fromARGB(255, 218, 34, 34)),
                    ), 
                    ),
                    controller: password,
                  )),
              /*TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'تأكيد كلمة المرور',
                        helperStyle: TextStyle(color: Colors.red, fontSize: 20),
                        prefixIcon: Icon(Icons.vpn_key),
                      ),
                       controller: confirm_the_password,
                      
                    ),*/
              RaisedButton(
                color: Colors.green,
                onPressed: () {
                  print(password.text);
                },
                child: Text("انشاء "),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
