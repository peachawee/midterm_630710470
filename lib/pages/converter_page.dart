import 'package:flutter/material.dart';
import 'package:midterm_630710470/converter.dart';

class ConverterPage extends StatefulWidget {

  @override
  State<ConverterPage> createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  final _controller = TextEditingController();
  final _converter = Converter();

  var _feedbackText = '';

  void handleClickCtoF() {
    setState(() {
    });
    print('Button clicked!');
    print(_controller.text);
    var temp = double.tryParse(_controller.text);
      if (temp == null) {
        // แจ้ง error
        print('input error');
        print(_controller.text);
        setState(() {
          _feedbackText = 'Please enter a value to convert.';
        });
      } else {
        var result = _converter.CtoF(temp);
        setState(() {
        print('$result');
        var strresult = ('$temp Celsius = $result Fahrenheit');
        _feedbackText = strresult;
        });
      }

  }
  void handleClickCtoK() {
    var temp = double.tryParse(_controller.text);
      if (temp == null) {
        // แจ้ง error
        print('input error');
        print(_controller.text);
        setState(() {
          _feedbackText = 'Please enter a value to convert.';
        });
      } else {
        var result = _converter.CtoK(temp);
        setState(() {
        print('$result');
        var strresult = ('$temp Celsius = $result Kelvin');
        _feedbackText = strresult;
        });
      }
  }
  void handleClickFtoC() {
    var temp = double.tryParse(_controller.text);
      if (temp == null) {
        // แจ้ง error
        print('input error');
        print(_controller.text);
        setState(() {
          _feedbackText = 'Please enter a value to convert.';
        });
      } else {
        var result = _converter.FtoC(temp);
        setState(() {
        print('$result');
        var strresult = ('$temp Fahrenheit = $result Celsius');
        _feedbackText = strresult;
        });
      }
  }
  void handleClickFtoK() {
    var temp = double.tryParse(_controller.text);
      if (temp == null) {
        // แจ้ง error
        print('input error');
        print(_controller.text);
        setState(() {
          _feedbackText = 'Please enter a value to convert.';
        });
      } else {
        var result = _converter.FtoK(temp);
        setState(() {
        print('$result');
        var strresult = ('$temp Fahrenheit = $result Kelvin');
        _feedbackText = strresult;
        });
      }
  }
  void handleClickKtoC() {
    var temp = double.tryParse(_controller.text);
    if (temp == null) {
      // แจ้ง error
      print('input error');
      print(_controller.text);
      setState(() {
        _feedbackText = 'Please enter a value to convert.';
      });
    } else {
      var result = _converter.KtoC(temp);
      setState(() {
      print('$result');
      var strresult = ('$temp Kelvin = $result Celsius');
      _feedbackText = strresult;
      });
    }
  }
  void handleClickKtoF() {
    var temp = double.tryParse(_controller.text);
      if (temp == null) {
        // แจ้ง error
        print('input error');
        print(_controller.text);
        setState(() {
          _feedbackText = 'Please enter a value to convert.';
        });
      } else {
        var result = _converter.KtoF(temp);
        setState(() {
        print('$result');
        var strresult = ('$temp Kelvin = $result Fahrenheit');
        _feedbackText = strresult;
        });
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Midterm_630710470'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Temperature Converter',textScaleFactor: 2.5),
            Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white, //สีพื้นหลังของ Container
                border: Border.all(
                  width: 5.0,
                  color: Colors.amber.shade500,
                ),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 15.0),
                    TextField(
                          controller: _controller,
                          decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter a temperature value to convert',
                        ),
                      ),
                    SizedBox(height: 15.0),
                    Row(
                children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child:ElevatedButton(
                  // style: OutlinedButton.styleFrom(
                  //     backgroundColor: _showTestButton? Colors.green: Colors.black),
                  onPressed: handleClickCtoF,
                  child: const Text('Celsius to Fahrenheit'),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child:ElevatedButton(
                  onPressed: handleClickCtoK,
                  child: const Text('Celsius to Kelvin'),
                ),
              ),
              ],
              ),
                Row(
              children:[
              Padding(
                padding: const EdgeInsets.all(3.0),
                child:ElevatedButton(
                  onPressed: handleClickFtoC,
                  child: const Text('Fahrenheit to Celsius'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child:ElevatedButton(
                  onPressed: handleClickFtoK,
                  child: const Text('Fahrenheit to Kelvin'),
                ),
              ),
              ],
                ),
              Row(
                children:[
              Padding(
                padding: const EdgeInsets.all(3.0),
                child:ElevatedButton(
                  onPressed: handleClickKtoC,
                  child: const Text('Kelvin to Celsius'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child:ElevatedButton(
                  onPressed: handleClickKtoF,
                  child: const Text('Kelvin to Fahrenheit'),
                ),
              ),
                  ]
              ),
      ],
            ),
            ),
            Text(_feedbackText,textScaleFactor: 1.5),
          ],
        ),
      ),
    );
  }
}