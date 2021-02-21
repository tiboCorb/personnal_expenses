import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function newTransactionHandler;

  NewTransaction(this.newTransactionHandler);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Title',
                  contentPadding: EdgeInsets.all(15.0),
                  filled: true,
                  fillColor: Color(0xff391419),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
                controller: titleController,
                cursorColor: Colors.yellow,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Amount',
                  contentPadding: EdgeInsets.all(15.0),
                  filled: true,
                  fillColor: Color(0xff391419),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
                controller: amountController,
              ),
            ),
            FlatButton(
              color: Colors.yellow,
              child: Text('Add transaction'),
              onPressed: () {
                newTransactionHandler(
                    titleController.text, double.parse(amountController.text));
              },
              textColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
