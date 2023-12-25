import 'package:flutter/material.dart';

class AppFunction {
  static nextPage(BuildContext context, Widget nextScreen) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => nextScreen,
      ),
    );
  }
}

/* you create a class that has many app functions in it
it will  has some functions, but the functions that navigate through our pages
will be static function, that takes two parameters, one which is a BuildContext
and we give it context, the second one the acual page that we want to go to
and its type is widget. the function has a Navigator.of(context).push(),
which create a stack of pages, push() will push anything inside it into 
the stack, and the context which is the page that we are in, will be under 
the new page, then there is a MaterialPageRoute that has a builder inside it
to render the new page that we are navigating to.
*/
