import 'package:flutter/material.dart';
import 'package:flutter_app_5/widgets/widgets.dart';

void main() {
  runApp(
    SampleApp(),
  );
}

class SampleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sample Shared App Handler',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  TextEditingController controllerOne = TextEditingController();
  String selectedCategory = 'Job Post';

  void _handleRadioValueChange(value) {
    setState(() {
      selectedCategory = value;

      switch (selectedCategory) {
        case 'Job Post':
          break;
        case 'Podcast Post':
          break;
        default:
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create post',
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTitle('Categories'),
              Row(
                children: [
                  buildRadioButton(
                    value: 'Job Post',
                    groupValue: selectedCategory,
                    onChanged: _handleRadioValueChange,
                  ),
                  subTitle('Create Job Post'),
                ],
              ),
              Row(
                children: [
                  buildRadioButton(
                    value: 'Podcast Post',
                    groupValue: selectedCategory,
                    onChanged: _handleRadioValueChange,
                  ),
                  subTitle('Create Podcase Post'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              buildTitle('Create Post'),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    subTitle('Selected Category'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      selectedCategory,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black45,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    subTitle('Job Title *'),
                    buildTextField(
                      text: '',
                      width: screenWidth * 0.86,
                      height: 60,
                      borderRadius: BorderRadius.circular(60),
                      controller: controllerOne,
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    subTitle('Company Name *'),
                    buildTextField(
                      text: '',
                      width: screenWidth * 0.86,
                      height: 60,
                      borderRadius: BorderRadius.circular(60),
                      controller: controllerOne,
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    subTitle('Location *'),
                    buildTextField(
                      text: '',
                      width: screenWidth * 0.86,
                      height: 60,
                      borderRadius: BorderRadius.circular(60),
                      controller: controllerOne,
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    subTitle('Description'),
                    buildTextField(
                      text: 'Other Details',
                      height: screenHeight * 0.25,
                      borderRadius: BorderRadius.circular(30),
                      controller: controllerOne,
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    subTitle('Upload Photos'),
                    Row(
                      children: [
                        buildaddPhoto(
                          onTap: () {},
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        buildaddPhoto(
                          onTap: () {},
                        ),
                      ],
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Click to add more',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold),
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
