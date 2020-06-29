import 'package:flutter/material.dart';





class NewTransaction extends StatelessWidget {
  
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function newTransactionHandler;

  NewTransaction(this.newTransactionHandler);

  @override
  Widget build(BuildContext context) {
    return  Card(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                  TextField(decoration: InputDecoration(labelText: 'Title'),
                  controller: titleController,),
                  TextField(decoration: InputDecoration(labelText: 'Amount'),
                  controller: amountController ,),
                  FlatButton(child: Text('add Transaction'),
                  onPressed: (){
                     newTransactionHandler(titleController.text, double.parse(amountController.text));
                  },
                  textColor: Colors.purple,)
                ],
               ),
              ),
            );
  }
}