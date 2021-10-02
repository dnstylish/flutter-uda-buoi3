import 'package:flutter/material.dart';

const InputDecoration kInputStyle = InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 2.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 2.0),
    ),
    // errorBorder: InputBorder.none,
    // disabledBorder: InputBorder.none,
    contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
    // hintText: "Password",
    // suffixIcon: Icon(Icons.email, color: Colors.white),
    hintStyle:  TextStyle(fontSize: 20.0, color: Colors.white)
);

const TextStyle kLabelStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 16
);

class FormView extends StatefulWidget {
  const FormView({Key? key}) : super(key: key);

  @override
  _FormViewState createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        child: Column(
          children: [
            TextField(
              cursorColor: Colors.white,
              style: TextStyle(fontSize: 20.0, color: Colors.white),
              decoration: kInputStyle.copyWith(
                  hintText: "Email",
                  suffixIcon: Icon(Icons.email, color: Colors.white)
              ),
            ),

            SizedBox(
              height: 20
            ),

            TextField(
              obscureText: true,
              cursorColor: Colors.white,
              style: TextStyle(fontSize: 20.0, color: Colors.white),
              decoration: kInputStyle.copyWith(
                  hintText: "Password",
                  suffixIcon: Icon(Icons.lock, color: Colors.white)
              ),
            ),

            SizedBox(
                height: 30
            ),

            TextButton(
                onPressed: () {
                  print("Submit here");
                },
                style: TextButton.styleFrom(
                    minimumSize: Size(300, 50),
                    alignment: Alignment.center,
                    backgroundColor: Color(0xFF00585D)
                ),
                child: Text(
                    "Đăng Nhập",
                    style: kLabelStyle
                )
            ),

            SizedBox(
                height: 25
            ),

            Text("Quên Mật Khẩu", style: kLabelStyle),

            SizedBox(
                height: 25
            ),

            Text("Đăng Nhập Bằng Email", style: kLabelStyle),

            SizedBox(
                height: 40
            ),


            Row(
                children: [
                  Expanded(
                      child: Divider(color: Colors.white, thickness: 3)
                  ),

                  SizedBox(
                      width: 10
                  ),

                  Text("Hoặc Là", style: kLabelStyle),

                  SizedBox(
                      width: 10
                  ),

                  Expanded(
                      child: Divider(color: Colors.white, thickness: 3)
                  ),
                ]
            ),

            SizedBox(
                height: 40
            ),

            SocialButtons()
          ],
        ),
      ),
    );
  }
}

class SocialButtons extends StatelessWidget {
  SocialButtons({Key? key}) : super(key: key);

  final List<String> list = [
    'fb.png', 'gg.png', 'ig.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: list.map(
                (path) => IconButton(
                    onPressed: () {},
                    icon: ClipRRect(
                      child: Image.asset("images/$path", width: 35, height: 35),
                      borderRadius: BorderRadius.circular(15),
                    )
                )
        )
            .toList(),
      ),
    );
  }
}


