import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ...transactions.map((tx) {
          return Card(
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                  // side: new BorderSide(color: Colors.red, width: 1.0),
                  ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 7,
                    decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(color: Colors.red),
                            bottom: BorderSide(color: Colors.red),
                            top: BorderSide(color: Colors.red))),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Card(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomRight: (Radius.circular(15.0))),
                          ),
                          color: Color(0xff391419),
                          child: Container(
                            padding: EdgeInsets.only(
                                bottom: 5, top: 5, left: 10, right: 15),
                            child: Text(
                              '${tx.amount} €',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.red),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              tx.title,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              DateFormat('dd/MM/yyyy').format(tx.date),
                              style: TextStyle(color: Colors.yellow),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 7,
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(color: Colors.red),
                            bottom: BorderSide(color: Colors.red),
                            top: BorderSide(color: Colors.red))),
                  ),
                ],
              ));
        }).toList()
      ],
    );
  }
}
