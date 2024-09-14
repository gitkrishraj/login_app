import 'package:flutter/material.dart';
import 'courier_screen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 30),  

              
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);  
                    },
                  ),
                  Spacer(),  
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),  
                ],
              ),
              SizedBox(height: 15),  

              
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,  
                  borderRadius: BorderRadius.circular(15),  
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),  
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.orangeAccent,
                      child: Icon(Icons.camera_alt, color: Colors.white, size: 40),
                    ),
                    SizedBox(height: 20),
                    
                    
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Full Name',
                        filled: true,
                        fillColor: Colors.green[100],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    
                    
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Phone Number',
                        filled: true,
                        fillColor: Colors.green[100],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),

                    
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        filled: true,
                        fillColor: Colors.green[100],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    
                    
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        filled: true,
                        fillColor: Colors.green[100],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),

                    
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        filled: true,
                        fillColor: Colors.green[100],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    
                    
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (val) {}),
                        Flexible(
                          child: Text(
                            "By creating an account you agree to our terms of service and privacy policy",
                            style: TextStyle(color: Colors.black54, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),

                    
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                          
                        
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>SelectCourierScreen ()),
                        );
                      
                      },
                      child: Text("Sign Up", style: TextStyle(color: Colors.white)),
                    ),
                    SizedBox(height: 0),

                    
                 TextButton(
  onPressed: () {},
  child: RichText(
    text: TextSpan(
      text: 'Already have an account? ',  
      style: TextStyle(color: Colors.black54),  
      children: <TextSpan>[
        TextSpan(
          text: 'Sign In',  
          style: TextStyle(color: Colors.orange),  
        ),
      ],
    ),
  ),
),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



