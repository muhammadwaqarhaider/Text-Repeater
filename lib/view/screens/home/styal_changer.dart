// import 'package:flutter/material.dart';
//
// class TextStyleChanger extends StatefulWidget {
//   @override
//   _TextStyleChangerState createState() => _TextStyleChangerState();
// }
//
// class _TextStyleChangerState extends State<TextStyleChanger> {
//   String selectedFont = 'Arial';
//   double selectedFontSize = 16.0;
//   Color selectedColor = Colors.black;
//   FontWeight selectedWeight = FontWeight.normal;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Text Style Changer'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Change My Style!',
//               style: TextStyle(
//                 fontFamily: selectedFont,
//                 fontSize: selectedFontSize,
//                 color: selectedColor,
//                 fontWeight: selectedWeight,
//               ),
//             ),
//             SizedBox(height: 20),
//             _buildDropdownMenu('Font', [
//               'Arial',
//               'Times New Roman',
//               'Courier New',
//               'Roboto',
//             ], (value) {
//               setState(() {
//                 selectedFont = value;
//               });
//             }),
//             _buildDropdownMenu('Font Size', [
//               'Small',
//               'Medium',
//               'Large',
//             ], (value) {
//               setState(() {
//                 switch (value) {
//                   case 'Small':
//                     selectedFontSize = 16.0;
//                     break;
//                   case 'Medium':
//                     selectedFontSize = 24.0;
//                     break;
//                   case 'Large':
//                     selectedFontSize = 32.0;
//                     break;
//                 }
//               });
//             }),
//             _buildDropdownMenu('Color', [
//               'Black',
//               'Red',
//               'Blue',
//               'Green',
//             ], (value) {
//               setState(() {
//                 switch (value) {
//                   case 'Black':
//                     selectedColor = Colors.black;
//                     break;
//                   case 'Red':
//                     selectedColor = Colors.red;
//                     break;
//                   case 'Blue':
//                     selectedColor = Colors.blue;
//                     break;
//                   case 'Green':
//                     selectedColor = Colors.green;
//                     break;
//                 }
//               });
//             }),
//             _buildDropdownMenu('Weight', [
//               'Normal',
//               'Bold',
//             ], (value) {
//               setState(() {
//                 switch (value) {
//                   case 'Normal':
//                     selectedWeight = FontWeight.normal;
//                     break;
//                   case 'Bold':
//                     selectedWeight = FontWeight.bold;
//                     break;
//                 }
//               });
//             }),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildDropdownMenu(String label, List<String> options,
//       Function(String) onChanged) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text('$label: '),
//           DropdownButton<String>(
//             value: options.first,
//             onChanged: (value) => onChanged(value!),
//             items: options.map((option) {
//               return DropdownMenuItem<String>(
//                 value: option,
//                 child: Text(option),
//               );
//             }).toList(),
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class TextStyleChanger extends StatefulWidget {
//   @override
//   _TextStyleChangerState createState() => _TextStyleChangerState();
// }
//
// class _TextStyleChangerState extends State<TextStyleChanger> {
//   String selectedFont = 'Arial';
//   double selectedFontSize = 16.0;
//   Color selectedColor = Colors.black;
//   FontWeight selectedWeight = FontWeight.normal;
//   TextAlign selectedAlignment = TextAlign.left;
//   bool isItalic = false;
//   bool isUnderlined = false;
//
//   List<String> fontFamilies = [
//     'Arial',
//     'Times New Roman',
//     'Courier New',
//     'Roboto',
//     'Open Sans',
//     'Montserrat',
//     'Lato',
//     'Raleway',
//     'Pacifico',
//     'Quicksand',
//     'Ubuntu',
//     'Oswald',
//     'Noto Sans',
//     'Maven Pro',
//     'Merriweather',
//     'Playfair Display',
//     'Poppins',
//     'Source Sans Pro',
//     'Bebas Neue',
//     'Inconsolata',
//     'Crimson Text',
//     'Rubik',
//     'Arimo',
//     'Indie Flower',
//     'Exo',
//     'Dancing Script',
//     'Fira Sans',
//     'Josefin Sans',
//     'Kaushan Script',
//     'Muli',
//     'Noticia Text',
//     'Old Standard TT',
//     'Play',
//     'Questrial',
//     'Rajdhani',
//     'Spectral',
//     'Tajawal',
//     'Vollkorn',
//     'Work Sans',
//     'Yantramanav',
//     'Zilla Slab',
//     'Cabin',
//     'Comfortaa',
//     'Dosis',
//     'Economica',
//     'Fjalla One',
//     'Grand Hotel',
//     'Hind',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Text Style Changer'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Change My Style!',
//               style: TextStyle(
//                 fontFamily: selectedFont,
//                 fontSize: selectedFontSize,
//                 color: selectedColor,
//                 fontWeight: selectedWeight,
//                 fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
//                 decoration: isUnderlined ? TextDecoration.underline : TextDecoration.none,
//               ),
//               textAlign: selectedAlignment,
//             ),
//             SizedBox(height: 20),
//             _buildDropdownMenu('Font', fontFamilies, (value) {
//               setState(() {
//                 selectedFont = value;
//               });
//             }),
//             _buildDropdownMenu('Font Size', [
//               'Small',
//               'Medium',
//               'Large',
//             ], (value) {
//               setState(() {
//                 switch (value) {
//                   case 'Small':
//                     selectedFontSize = 16.0;
//                     break;
//                   case 'Medium':
//                     selectedFontSize = 24.0;
//                     break;
//                   case 'Large':
//                     selectedFontSize = 32.0;
//                     break;
//                 }
//               });
//             }),
//             _buildDropdownMenu('Color', [
//               'Black',
//               'Red',
//               'Blue',
//               'Green',
//             ], (value) {
//               setState(() {
//                 switch (value) {
//                   case 'Black':
//                     selectedColor = Colors.black;
//                     break;
//                   case 'Red':
//                     selectedColor = Colors.red;
//                     break;
//                   case 'Blue':
//                     selectedColor = Colors.blue;
//                     break;
//                   case 'Green':
//                     selectedColor = Colors.green;
//                     break;
//                 }
//               });
//             }),
//             _buildDropdownMenu('Weight', [
//               'Normal',
//               'Bold',
//             ], (value) {
//               setState(() {
//                 switch (value) {
//                   case 'Normal':
//                     selectedWeight = FontWeight.normal;
//                     break;
//                   case 'Bold':
//                     selectedWeight = FontWeight.bold;
//                     break;
//                 }
//               });
//             }),
//             _buildDropdownMenu('Alignment', [
//               'Left',
//               'Center',
//               'Right',
//             ], (value) {
//               setState(() {
//                 switch (value) {
//                   case 'Left':
//                     selectedAlignment = TextAlign.left;
//                     break;
//                   case 'Center':
//                     selectedAlignment = TextAlign.center;
//                     break;
//                   case 'Right':
//                     selectedAlignment = TextAlign.right;
//                     break;
//                 }
//               });
//             }),
//             _buildSwitch('Italic', isItalic, (value) {
//               setState(() {
//                 isItalic = value;
//               });
//             }),
//             _buildSwitch('Underline', isUnderlined, (value) {
//               setState(() {
//                 isUnderlined = value;
//               });
//             }),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildDropdownMenu(String label, List<String> options, Function(String) onChanged) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text('$label: '),
//           DropdownButton<String>(
//             value: options.first,
//             onChanged: (value) => onChanged(value!),
//             items: options.map((option) {
//               return DropdownMenuItem<String>(
//                 value: option,
//                 child: Text(option),
//               );
//             }).toList(),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildSwitch(String label, bool value, Function(bool) onChanged) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text('$label: '),
//           Switch(
//             value: value,
//             onChanged: (value) => onChanged(value),
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class TextStyleChanger extends StatefulWidget {
//   @override
//   _TextStyleChangerState createState() => _TextStyleChangerState();
// }
//
// class _TextStyleChangerState extends State<TextStyleChanger> {
//   String selectedFont = 'Arial';
//   double selectedFontSize = 16.0;
//   Color selectedColor = Colors.black;
//   FontWeight selectedWeight = FontWeight.normal;
//   TextAlign selectedAlignment = TextAlign.left;
//   bool isItalic = false;
//   bool isUnderlined = false;
//
//   List<String> fontFamilies = [
//     'Arial',
//     'Times New Roman',
//     'Courier New',
//     'Roboto',
//     'Open Sans',
//     'Montserrat',
//     'Lato',
//     'Raleway',
//     'Pacifico',
//     'Quicksand',
//     'Ubuntu',
//     'Oswald',
//     'Noto Sans',
//     'Maven Pro',
//     'Merriweather',
//     'Playfair Display',
//     'Poppins',
//     'Source Sans Pro',
//     'Bebas Neue',
//     'Inconsolata',
//     'Crimson Text',
//     'Rubik',
//     'Arimo',
//     'Indie Flower',
//     'Exo',
//     'Dancing Script',
//     'Fira Sans',
//     'Josefin Sans',
//     'Kaushan Script',
//     'Muli',
//     'Noticia Text',
//     'Old Standard TT',
//     'Play',
//     'Questrial',
//     'Rajdhani',
//     'Spectral',
//     'Tajawal',
//     'Vollkorn',
//     'Work Sans',
//     'Yantramanav',
//     'Zilla Slab',
//     'Cabin',
//     'Comfortaa',
//     'Dosis',
//     'Economica',
//     'Fjalla One',
//     'Grand Hotel',
//     'Hind',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Text Style Changer'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Change My Style!',
//               style: TextStyle(
//                 fontFamily: selectedFont,
//                 fontSize: selectedFontSize,
//                 color: selectedColor,
//                 fontWeight: selectedWeight,
//                 fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
//                 decoration: isUnderlined ? TextDecoration.underline : TextDecoration.none,
//               ),
//               textAlign: selectedAlignment,
//             ),
//             SizedBox(height: 20),
//             _buildDropdownMenu('Font', fontFamilies, (value) {
//               setState(() {
//                 selectedFont = value;
//               });
//             }),
//             _buildDropdownMenu('Font Size', [
//               'Small',
//               'Medium',
//               'Large',
//             ], (value) {
//               setState(() {
//                 switch (value) {
//                   case 'Small':
//                     selectedFontSize = 16.0;
//                     break;
//                   case 'Medium':
//                     selectedFontSize = 24.0;
//                     break;
//                   case 'Large':
//                     selectedFontSize = 32.0;
//                     break;
//                 }
//               });
//             }),
//             _buildDropdownMenu('Color', [
//               'Black',
//               'Red',
//               'Blue',
//               'Green',
//             ], (value) {
//               setState(() {
//                 switch (value) {
//                   case 'Black':
//                     selectedColor = Colors.black;
//                     break;
//                   case 'Red':
//                     selectedColor = Colors.red;
//                     break;
//                   case 'Blue':
//                     selectedColor = Colors.blue;
//                     break;
//                   case 'Green':
//                     selectedColor = Colors.green;
//                     break;
//                 }
//               });
//             }),
//             _buildDropdownMenu('Weight', [
//               'Normal',
//               'Bold',
//             ], (value) {
//               setState(() {
//                 switch (value) {
//                   case 'Normal':
//                     selectedWeight = FontWeight.normal;
//                     break;
//                   case 'Bold':
//                     selectedWeight = FontWeight.bold;
//                     break;
//                 }
//               });
//             }),
//             _buildDropdownMenu('Alignment', [
//               'Left',
//               'Center',
//               'Right',
//             ], (value) {
//               setState(() {
//                 switch (value) {
//                   case 'Left':
//                     selectedAlignment = TextAlign.left;
//                     break;
//                   case 'Center':
//                     selectedAlignment = TextAlign.center;
//                     break;
//                   case 'Right':
//                     selectedAlignment = TextAlign.right;
//                     break;
//                 }
//               });
//             }),
//             _buildSwitch('Italic', isItalic, (value) {
//               setState(() {
//                 isItalic = value;
//               });
//             }),
//             _buildSwitch('Underline', isUnderlined, (value) {
//               setState(() {
//                 isUnderlined = value;
//               });
//             }),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildDropdownMenu(String label, List<String> options, Function(String) onChanged) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text('$label: '),
//           DropdownButton<String>(
//             value: options.first,
//             onChanged: (value) => onChanged(value!),
//             items: options.map((option) {
//               return DropdownMenuItem<String>(
//                 value: option,
//                 child: Text(option),
//               );
//             }).toList(),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildSwitch(String label, bool value, Function(bool) onChanged) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text('$label: '),
//           Switch(
//             value: value,
//             onChanged: (value) => onChanged(value),
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class TextStyleChanger extends StatefulWidget {
//   @override
//   _TextStyleChangerState createState() => _TextStyleChangerState();
// }
//
// class _TextStyleChangerState extends State<TextStyleChanger> {
//   String selectedFont = '';
//   double selectedFontSize = 16.0;
//   Color selectedColor = Colors.black;
//   FontWeight selectedWeight = FontWeight.normal;
//   TextAlign selectedAlignment = TextAlign.left;
//   bool isItalic = false;
//   bool isUnderlined = false;
//
//   List<String> fontFamilies = [
//     'Arial',
//     'Times New Roman',
//     'Courier New',
//     'Roboto',
//     'Open Sans',
//     'Montserrat',
//     'Lato',
//     'Raleway',
//     'Pacifico',
//     'Quicksand',
//     'Ubuntu',
//     'Oswald',
//     'Noto Sans',
//     'Maven Pro',
//     'Merriweather',
//     'Playfair Display',
//     'Poppins',
//     'Source Sans Pro',
//     'Bebas Neue',
//     'Inconsolata',
//     'Crimson Text',
//     'Rubik',
//     'Arimo',
//     'Indie Flower',
//     'Exo',
//     'Dancing Script',
//     'Fira Sans',
//     'Josefin Sans',
//     'Kaushan Script',
//     'Muli',
//     'Noticia Text',
//     'Old Standard TT',
//     'Play',
//     'Questrial',
//     'Rajdhani',
//     'Spectral',
//     'Tajawal',
//     'Vollkorn',
//     'Work Sans',
//     'Yantramanav',
//     'Zilla Slab',
//     'Cabin',
//     'Comfortaa',
//     'Dosis',
//     'Economica',
//     'Fjalla One',
//     'Grand Hotel',
//     'Hind',
//   ];
//
//   @override
//   void initState() {
//     super.initState();
//     // Set the initial value to the first item in the fontFamilies list
//     selectedFont = fontFamilies.first;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Text Style Changer'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Change My Style!',
//               style: TextStyle(
//                 fontFamily: selectedFont,
//                 fontSize: selectedFontSize,
//                 color: selectedColor,
//                 fontWeight: selectedWeight,
//                 fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
//                 decoration: isUnderlined ? TextDecoration.underline : TextDecoration.none,
//               ),
//               textAlign: selectedAlignment,
//             ),
//             SizedBox(height: 20),
//             _buildDropdownMenu('Font', fontFamilies, (value) {
//               setState(() {
//                 selectedFont = value;
//               });
//             }),
//             _buildDropdownMenu('Font Size', [
//               'Small',
//               'Medium',
//               'Large',
//             ], (value) {
//               setState(() {
//                 switch (value) {
//                   case 'Small':
//                     selectedFontSize = 16.0;
//                     break;
//                   case 'Medium':
//                     selectedFontSize = 24.0;
//                     break;
//                   case 'Large':
//                     selectedFontSize = 32.0;
//                     break;
//                 }
//               });
//             }),
//             _buildDropdownMenu('Color', [
//               'Black',
//               'Red',
//               'Blue',
//               'Green',
//             ], (value) {
//               setState(() {
//                 switch (value) {
//                   case 'Black':
//                     selectedColor = Colors.black;
//                     break;
//                   case 'Red':
//                     selectedColor = Colors.red;
//                     break;
//                   case 'Blue':
//                     selectedColor = Colors.blue;
//                     break;
//                   case 'Green':
//                     selectedColor = Colors.green;
//                     break;
//                 }
//               });
//             }),
//             _buildDropdownMenu('Weight', [
//               'Normal',
//               'Bold',
//             ], (value) {
//               setState(() {
//                 switch (value) {
//                   case 'Normal':
//                     selectedWeight = FontWeight.normal;
//                     break;
//                   case 'Bold':
//                     selectedWeight = FontWeight.bold;
//                     break;
//                 }
//               });
//             }),
//             _buildDropdownMenu('Alignment', [
//               'Left',
//               'Center',
//               'Right',
//             ], (value) {
//               setState(() {
//                 switch (value) {
//                   case 'Left':
//                     selectedAlignment = TextAlign.left;
//                     break;
//                   case 'Center':
//                     selectedAlignment = TextAlign.center;
//                     break;
//                   case 'Right':
//                     selectedAlignment = TextAlign.right;
//                     break;
//                 }
//               });
//             }),
//             _buildSwitch('Italic', isItalic, (value) {
//               setState(() {
//                 isItalic = value;
//               });
//             }),
//             _buildSwitch('Underline', isUnderlined, (value) {
//               setState(() {
//                 isUnderlined = value;
//               });
//             }),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildDropdownMenu(String label, List<String> options, Function(String) onChanged) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text('$label: '),
//           DropdownButton<String>(
//             value: selectedFont,
//             onChanged: (value) => onChanged(value!),
//             items: options.map((option) {
//               return DropdownMenuItem<String>(
//                 value: option,
//                 child: Text(option),
//               );
//             }).toList(),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildSwitch(String label, bool value, Function(bool) onChanged) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text('$label: '),
//           Switch(
//             value: value,
//             onChanged: (value) => onChanged(value),
//           ),
//         ],
//       ),
//     );
//   }
// }

