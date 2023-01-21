import 'package:flutter/material.dart';
import 'package:widget_ui/pages/detail_page.dart';
import 'package:widget_ui/pages/home_page.dart';
// import 'package:widget_ui/widgets/sample_dialog_bottom_sheet.dart';
// import 'package:widget_ui/widgets/sample_flexible_expanded.dart';
// import 'package:widget_ui/widgets/sample_navbar.dart';
// import 'package:widget_ui/widgets/sample_card.dart';
// import 'package:widget_ui/widgets/sample_column_row.dart';
// import 'package:widget_ui/widgets/sample_container.dart';
// import 'package:widget_ui/widgets/sample_gridview.dart';
// import 'package:widget_ui/widgets/sample_listview_listtile.dart';
// import 'package:widget_ui/widgets/sample_sizebox.dart';
// import 'package:widget_ui/widgets/sample_stack_positioned.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //

        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/detail': (context) => const DetailPage(
              textData: 'Data from home page',
            ),
      },
    );
  }
}
