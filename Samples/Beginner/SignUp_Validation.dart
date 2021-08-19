// Importing Material Library
import 'package:flutter/material.dart';

// Main Function of this App
// We will call runApp that is a built-in function that will run the App
void main() {
  runApp(MyApp());
}

// MyApp Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Capsule',
      // Route when App Starts
      home: SignupFormValidation(),
    );
  }
}

// Signup Form Validation Widget
class SignupFormValidation extends StatefulWidget {
  @override
  _SignupFormValidationState createState() => _SignupFormValidationState();
}

class _SignupFormValidationState extends State<SignupFormValidation> {
  // TextEditingController - A controller for an editable text field.
  TextEditingController _name;
  TextEditingController _email;
  TextEditingController _pass;

  // FocusNode - An object that can be used by a stateful widget to obtain the keyboard focus and to handle keyboard events.
  FocusNode emailFocus = FocusNode();
  FocusNode passFocus = FocusNode();

  // GlobalKey<FormState> is key that is unique across the entire app.
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  var _obscureText = true;

  @override
  void initState() {
    // initState() - called when this object is inserted into the tree
    _name = TextEditingController();
    _email = TextEditingController();
    _pass = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // dispose() - when this object and its State is removed from the tree permanently and will never build again.
    _name.dispose();
    _email.dispose();
    _pass.dispose();

    emailFocus.dispose();
    passFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ShapeArea will indent the child by enough to avoid the status bar at the top of the screen.
    return SafeArea(
      child: Scaffold(
        // Set the Whole Screen background color
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            // Minimize the amount of free space along the main axis, subject to the incoming layout constraints.
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Flutter",
                // Styling text
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: Theme.of(context).textTheme.headline6.fontSize,
                ),
              ),
              Text(
                "Capsule",
                // Styling text
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.w600,
                  fontSize: Theme.of(context).textTheme.headline6.fontSize,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          // Form is an optional container for grouping together multiple form field widgets (e.g. TextField widgets).
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // call the formTextWidget as a Name Field
                formTextWidget(
                  hintText: "Name",
                  obscureText: false,
                  controller: _name,
                  textInputAction: TextInputAction.next,
                  onEditingComplete: () {
                    FocusScope.of(context).requestFocus(emailFocus);
                  },
                  validator: (val) {
                    if (val.isEmpty) return "Field is Empty";
                    return null;
                  },
                ),
                // call the formTextWidget as a Email Field
                formTextWidget(
                  hintText: "Email",
                  obscureText: false,
                  controller: _email,
                  focusNode: emailFocus,
                  textInputAction: TextInputAction.next,
                  onEditingComplete: () {
                    FocusScope.of(context).requestFocus(passFocus);
                  },
                  validator: (val) {
                    if (val.isEmpty || !val.contains("@gmail.com")) {
                      return "Field must be conatin @gmail.com";
                    }
                    return null;
                  },
                ),
                // call the formTextWidget as a Password Field
                formTextWidget(
                  hintText: "Password",
                  obscureText: _obscureText,
                  controller: _pass,
                  textInputAction: TextInputAction.done,
                  suffixIcon: InkWell(
                    onTap: () {
                      // setState will change our state and we can see the password visibility or not
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: _obscureText ? Colors.amber : Colors.white,
                    ),
                  ),
                  validator: (val) {
                    if (val.isEmpty || val.length < 7)
                      return "Field have more than 7 digits";
                    return null;
                  },
                ),
                // SizedBox - A box with a specified size.
                SizedBox(
                  height: 25,
                ),
                // MaterialButton - A utility class for building Material buttons that depend on the ambient ButtonTheme and Theme.
                MaterialButton(
                  onPressed: () {
                    String name = _name.text;
                    String email = _email.text;
                    String pass = _pass.text;
                    print(
                        "Name is $name \nEmail is $email \nPassword is $pass");

                    var a = _formkey.currentState.validate();
                    print("The a  is $a");
                    _formkey.currentState.save();
                    _name.clear(); // Remove the element after insert the name
                    _email.clear(); // Remove the element after insert the email
                    _pass
                        .clear(); // Remove the element after insert the password
                  },
                  color: Colors.red,
                  padding: EdgeInsets.symmetric(
                    vertical: 13,
                    horizontal: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Text("Create an Account"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// making the formTextWidget
// contain the TextFormField
Widget formTextWidget({
  TextEditingController controller,
  bool obscureText,
  String hintText,
  Widget suffixIcon,
  FocusNode focusNode,
  Function() onEditingComplete,
  Function(String) validator,
  TextInputAction textInputAction,
}) {
  return TextFormField(
    obscureText: obscureText,
    controller: controller,
    // Styling form-text
    style: TextStyle(
      color: Colors.white,
    ),
    validator: validator,
    decoration: InputDecoration(
      hintText: hintText,
      // Styling Hint-text
      hintStyle: TextStyle(
        color: Colors.grey,
      ),
      suffixIcon: suffixIcon,
      // UnderlineInputBorder - Draws a horizontal line at the bottom of an InputDecorator's container and defines the container's shape.
      // The input decorator's "container" is the optionally filled area above the decorator's helper, error, and counter.
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
    ),
    focusNode: focusNode,
    textInputAction: textInputAction,
    onEditingComplete: onEditingComplete,
  );
}
