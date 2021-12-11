import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gradient Demo Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Gradients in Flutter",
          style: GoogleFonts.montserrat(fontSize: 24),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // For Linear Gradient without stops and tileMode
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Column(
                //     children: [
                //       Container(
                //         height: MediaQuery.of(context).size.height * 0.7,
                //         width: MediaQuery.of(context).size.width * 0.9,
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(20),
                //           gradient: const LinearGradient(
                //             colors: [Colors.purple, Colors.blueAccent],
                //             begin: Alignment.bottomLeft,
                //             end: Alignment.topRight,
                //           ),
                //         ),
                //       ),
                //       const SizedBox(
                //         height: 5,
                //       ),
                //       Text(
                //         "Linear Gradient",
                //         style: GoogleFonts.lato(
                //           fontSize: 30,
                //         ),
                //       ),
                //       const SizedBox(
                //         height: 5,
                //       ),
                //     ],
                //   ),
                // ),
                // For Linear Gradient with stops and tileMode
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Column(
                //     children: [
                //       Container(
                //         height: MediaQuery.of(context).size.height * 0.7,
                //         width: MediaQuery.of(context).size.width * 0.9,
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(20),
                //           gradient: const LinearGradient(
                //             colors: [Colors.purple, Colors.blueAccent],
                //             begin: Alignment.bottomLeft,
                //             end: Alignment.topRight,
                //             stops: [0.4, 0.7],
                //             tileMode: TileMode.repeated,
                //           ),
                //         ),
                //       ),
                //       const SizedBox(
                //         height: 5,
                //       ),
                //       Text(
                //         "Linear Gradient with stops",
                //         style: GoogleFonts.lato(
                //           fontSize: 30,
                //         ),
                //       ),
                //       const SizedBox(
                //         height: 5,
                //       ),
                //     ],
                //   ),
                // ),
                // For Radial Gradient without stops and tileMode
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Column(
                //     children: [
                //       Container(
                //         height: MediaQuery.of(context).size.height * 0.7,
                //         width: MediaQuery.of(context).size.width * 0.9,
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(20),
                //           gradient: const RadialGradient(
                //             colors: [Colors.red, Colors.yellow],
                //             radius: 0.75,
                //           ),
                //         ),
                //       ),
                //       const SizedBox(
                //         height: 5,
                //       ),
                //       Text(
                //         "Radial Gradient",
                //         style: GoogleFonts.lato(
                //           fontSize: 30,
                //         ),
                //       ),
                //       const SizedBox(
                //         height: 5,
                //       ),
                //     ],
                //   ),
                // ),
                // For Radial Gradient with stops and tileMode
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const RadialGradient(
                            colors: [Colors.red, Colors.yellow],
                            radius: 0.75,
                            focal: Alignment(0.7, -0.7),
                            tileMode: TileMode.clamp,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Radial Gradient with stops",
                        style: GoogleFonts.lato(
                          fontSize: 30,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
