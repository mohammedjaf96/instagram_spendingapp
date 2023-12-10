import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(
        preferredSize: const Size.fromHeight(250.0), // Adjust the preferred height as needed
        child: AppBar(
          elevation: 0,
          title: Text('الرئيسية',textAlign: TextAlign.center,
            style: GoogleFonts.almarai(fontSize: 20,fontWeight: FontWeight.normal),),
          leading: IconButton(
            onPressed: (){

            },
            icon: const Icon(Icons.person_outline_sharp),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: (){

              },
              icon: const Icon(Icons.bar_chart),
            ),
            IconButton(
              onPressed: (){
              },
              icon: const Icon(Icons.add),
            ),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0XFF043cb5),Color(0XFF06a181)],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(height: 15,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Row(
                      children: [
                        _boxWidget('20,000', 'الـبــــاقي'),
                        Container(
                          width: 1,
                          height: 30,
                          color: Colors.white,
                        ),
                        _boxWidget('12,000', 'الصرفيات'),
                        Container(
                          width: 1,
                          height: 30,
                          color: Colors.white,
                        ),
                        _boxWidget('30,000', 'الميزانية'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  _switchButtons(),
                  const SizedBox(height: 15,),
                  _dateSelectWidget()
                ],
              ),
            ),
          ), // i use flexibleSpace widget to set custom height
        ),
      ),
      body: IndexedStack(
        index: pageIndex,
        children: [
          ListView.builder(
            itemCount: 12,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: GestureDetector(
                  onTap: (){},
                  child: Card(
                    elevation: 0.1,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('الصرفيات',textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(fontSize: 13,color: Colors.black54),),
                              const SizedBox(width: 10,),
                              const Icon(Icons.arrow_forward,color: Colors.black54,size: 20,),
                            ],
                          ),
                          SizedBox(
                            height: 70,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Card(
                                  elevation: 0.1,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.deepOrangeAccent.withOpacity(0.3)
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    child: Image.asset('img/other.png',height: 40,),
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('الميزانيه المحدده : ${30.000}',textAlign: TextAlign.right,
                                      style: GoogleFonts.almarai(fontSize: 12,color: Colors.black54),),
                                    const SizedBox(height: 5,),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width - 120,
                                      child: const StepProgressIndicator(
                                        totalSteps: 100,
                                        currentStep: 60,
                                        size: 10,
                                        selectedColor: Colors.deepOrangeAccent,
                                        unselectedColor: Colors.black38,
                                        padding: 0,
                                      ),
                                    ),
                                    const SizedBox(height: 5,),
                                    Text('اخر عملية اضافة : ${'2023-03-11'}',textAlign: TextAlign.right,
                                      textDirection: TextDirection.ltr,
                                      style: GoogleFonts.almarai(fontSize: 12,color: Colors.black54),),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          ListView.builder(
            itemCount: 12,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: GestureDetector(
                  onTap: (){},
                  child: Card(
                    elevation: 0.1,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('الدخل',textAlign: TextAlign.right,
                                style: GoogleFonts.almarai(fontSize: 13,color: Colors.black54),),
                              const SizedBox(width: 10,),
                              const Icon(Icons.arrow_forward,color: Colors.black54,size: 20,),
                            ],
                          ),
                          SizedBox(
                            height: 70,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Card(
                                  elevation: 0.1,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.green.withOpacity(0.3)
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    child: Image.asset('img/house.png',height: 40,),
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('الميزانيه المحدده : ${30.000}',textAlign: TextAlign.right,
                                      style: GoogleFonts.almarai(fontSize: 12,color: Colors.black54),),
                                    const SizedBox(height: 5,),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width - 120,
                                      child: const StepProgressIndicator(
                                        totalSteps: 100,
                                        currentStep: 60,
                                        size: 10,
                                        selectedColor: Colors.green,
                                        unselectedColor: Colors.black38,
                                        padding: 0,
                                      ),
                                    ),
                                    const SizedBox(height: 5,),
                                    Text('اخر عملية اضافة : ${'2023-03-11'}',textAlign: TextAlign.right,
                                      textDirection: TextDirection.ltr,
                                      style: GoogleFonts.almarai(fontSize: 12,color: Colors.black54),),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  _boxWidget(value,title){
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3.1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(value.toString(),textAlign: TextAlign.center,
              style: GoogleFonts.almarai(fontSize: 17,color: Colors.white)),
          const SizedBox(height: 5,),
          Text(title,textAlign: TextAlign.center,
              style: GoogleFonts.almarai(fontSize: 12,color: Colors.white)),
        ],
      ),
    );
  }

  /// this other widget i use it appbar - to switching pages
  _switchButtons(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
              setState(() {
                pageIndex = 1;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height: 35,
              width: (MediaQuery.of(context).size.width - 40) / 2,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                  color: pageIndex == 1 ? const Color(0XFF05d7a3) : const Color(0XFF1c6eac)
              ),
              child: Center(
                child: Text('الـــــدخــل',textAlign: TextAlign.center,
                  style: GoogleFonts.almarai(fontSize: 14,color: Colors.white),),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                pageIndex = 0;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height: 35,
              width: (MediaQuery.of(context).size.width - 40) / 2,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: pageIndex == 0 ? const Color(0XFF05d7a3) : const Color(0XFF1c6eac)
              ),
              child: Center(
                child: Text('الصــــرفيات',textAlign: TextAlign.center,
                  style: GoogleFonts.almarai(fontSize: 14,color: Colors.white),),
              ),
            ),
          ),
        ],
      ),
    );
  }



  /// i use this widget in appbar
  /// i use it to change the date to filter reports as date selected
  _dateSelectWidget(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      color: Colors.grey.withOpacity(0.2),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: (){

            },
            icon: const Icon(Icons.arrow_back_ios,color: Colors.white,),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('2023-12-04',textAlign: TextAlign.center,
                style: GoogleFonts.almarai(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
              const SizedBox(height: 5,),
              Text('30' + '   عدد العمليات',textAlign: TextAlign.center,
                style: GoogleFonts.almarai(fontSize: 14,color: Colors.white),),
            ],
          ),
          IconButton(
            onPressed: (){

            },
            icon: const Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,),
          ),
        ],
      ),
    );
  }

}

