import 'package:flutter/material.dart';

class LayoutForm extends StatelessWidget {
  const LayoutForm({
    Key? key,
    required this.width,
    required this.high,
    required this.subTitle,
    required this.form,
    this.footer,
  }) : super(key: key);
  final double width;
  final double high;
  //final Widget title;
  final String subTitle;
  final Form form;
  final Widget? footer;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Container(
        width: this.width,
        //height: this.high,
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
        color: Colors.white54,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('images/comein_logo.png'),
            LineBox(height: 20),
            Text(
              this.subTitle,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            ),
            LineBox(height: 20),
            // this.title,
            // Form(
            //   child:
            //       Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            //     LineBox(height: 50),
            //     // Text("Email"),
            //     LineBox(height: 10),
            //     buildEmailFormField(),
            //     LineBox(height: 20),
            //     buildEmailFormField(),
            //     LineBox(height: 20),
            //     ElevatedButton.icon(
            //         onPressed: () {
            //           Navigator.pushNamed(context, HotelHomeScreen.routeName);
            //         },
            //         label: Text('Login'),
            //         icon: Icon(Icons.login_rounded),
            //         style: ElevatedButton.styleFrom(
            //           padding: const EdgeInsets.symmetric(
            //               vertical: 25, horizontal: 25),
            //         ))
            //   ]),
            // ),
            this.form,
            //this.footer!,
            // LineBox(height: 20),
            // HotelRegister(),
          ],
        ),
      ),
    );
  }
}

class LineBox extends StatelessWidget {
  const LineBox({required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(10, this.height),
    );
  }
}

class LabelBox extends StatelessWidget {
  const LabelBox(
      {required this.label, this.vertical = 5, this.horizontal = 10});
  //final double height;
  final String label;
  final double vertical;
  final double horizontal;
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      padding: EdgeInsets.symmetric(
          vertical: this.vertical, horizontal: this.horizontal),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}

class LayoutTextFeild extends StatelessWidget {
  const LayoutTextFeild({
    required this.hint,
    this.label = "",
  });
  final String label;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 20),
      child: TextFormField(
        style: TextStyle(color: Colors.black),
        //keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          //   //focusColor: Colors.white,
          //   //fillColor: Colors.yellow,
          labelText: this.label,
          hintText: this.hint,
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          //   // If  you are using latest version of flutter then lable text and hint text shown like this
          //   // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          //   suffixIcon: CustomSurffixIcon(svgIcon: "icons/Mail.svg"),
        ),
      ),
    );
  }
}

class LayoutTextAreaFeild extends StatelessWidget {
  const LayoutTextAreaFeild({
    required this.hint,
    this.label = "",
  });
  final String label;
  final String hint;
  @override
  Widget build(BuildContext context) {
    // final int line=3;
    int line = 3;
    return Padding(
      padding: EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 20),
      child: Container(
        height: line * 30.0,
        child: TextFormField(
          maxLines: line,
          keyboardType: TextInputType.multiline,
          style: TextStyle(color: Colors.black),
          //keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            //   //focusColor: Colors.white,
            //   //fillColor: Colors.yellow,
            labelText: this.label,
            hintText: this.hint,
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
            //   // If  you are using latest version of flutter then lable text and hint text shown like this
            //   // if you r using flutter less then 1.20.* then maybe this is not working properly
            floatingLabelBehavior: FloatingLabelBehavior.always,
            //   suffixIcon: CustomSurffixIcon(svgIcon: "icons/Mail.svg"),
          ),
        ),
      ),
    );
  }
}

class LayoutEmailFeild extends StatelessWidget {
  const LayoutEmailFeild({
    required this.hint,
    this.label = "",
  });
  final String label;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 15),
      child: TextFormField(
        style: TextStyle(color: Colors.black),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          //   //focusColor: Colors.white,
          //   //fillColor: Colors.yellow,
          labelText: this.label,
          hintText: this.hint,
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          //   // If  you are using latest version of flutter then lable text and hint text shown like this
          //   // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          //   suffixIcon: CustomSurffixIcon(svgIcon: "icons/Mail.svg"),
        ),
      ),
    );
  }
}

class LayoutButton extends StatelessWidget {
  const LayoutButton(
      {Key? key, required this.label, required this.icon, required this.press})
      : super(key: key);
  final String label;
  final Icon icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 15),
      width: double.infinity,
      child: ElevatedButton.icon(
          onPressed: this.press,
          label: Text(this.label),
          icon: this.icon,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          )),
    );
  }
}
