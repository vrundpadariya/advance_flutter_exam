import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/apimodel/model.dart';
import '../../model/helper/api_helper.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Chuck Norris jokes"),
        centerTitle: true,
        actions: [],
      ),
      body: FutureBuilder(
        future: Apihelper.api.getdata(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("${snapshot.error}"),
            );
          } else if (snapshot.hasData) {
            Alljokes jokes = snapshot.data;
            return Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "lib/app/assets/chucknorris_logo.png",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  height: 100,
                  width: w,
                  child: Text(
                    jokes.value,
                    style: GoogleFonts.roboto(),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(
                      5,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage(
                              "lib/app/assets/share.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
