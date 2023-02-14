import 'package:flutter/material.dart';

class Home extends  StatelessWidget {
  
  @override
  Widget build(BuildContext context){
    return Stack(
      children: [
        Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Tiv.jpg'),
            fit:  BoxFit.cover
            )
        )
      ),
      Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
             Container(  
                margin: EdgeInsets.all(2),  
                child: ElevatedButton(  
                  child: Text('Login!', style: TextStyle(fontSize: 20.0),),  
                  onPressed: () {},  
                ),  
             ),
             Container(
              margin: EdgeInsets.all(2),
              child: ElevatedButton(
                child: Text('Guest!', style: TextStyle(fontSize: 20.0),),  
                  onPressed: () {},  
              )
              ),
            
          ],
        ),
      )
      ]
    );
  }
}

 class BigCard extends StatelessWidget {
  const BigCard({
    Key? key,
    required this.value,
  }) : super(key: key);
  final int value;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var style = theme.textTheme.displaySmall!.copyWith(color: theme.colorScheme.onPrimary);
    return Card(

      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: theme.colorScheme.primary,
      child: Padding(
        
        padding: const EdgeInsets.all(15.0),
        child: Text(value.toString(), style: style),
      ),
    );
  }
}
