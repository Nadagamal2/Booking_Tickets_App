import 'package:barcode_widget/barcode_widget.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../widgets/Layout_builderr.dart';
import '../widgets/colum_layout.dart';
import '../widgets/tickets_tap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Stack(children: [
        ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(40),
            Text(
              'Tickets',
              style: Styles.headLineStyle1,
            ),
            Gap(20),
            AppTicketsTaps(
              firstTab: 'Upcoming',
              secondTab: 'previous',
            ),
            Gap(20),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumLayout(
                        firstText: 'Flutter DB',
                        secondText: 'Passenger',
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumLayout(
                        firstText: '5221 478566',
                        secondText: 'Passport',
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  Gap(20),
                  LayoutBuilder1(),
                  Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumLayout(
                        firstText: '0055 444 77147',
                        secondText: 'Number of E ticket',
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumLayout(
                        firstText: 'B2SG28',
                        secondText: 'Bokking code',
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  Gap(20),
                  LayoutBuilder1(),
                  Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/visa.png',
                                scale: 11,
                              ),
                              Text(
                                ' *** 2462',
                                style: Styles.headLineStyle3
                                    .copyWith(color: Colors.black87),
                              )
                            ],
                          ),
                          Gap(5),
                          Text(
                            'Payment method',
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                      AppColumLayout(
                        firstText: '\$249.99',
                        secondText: 'Price',
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 1,
            ),

            Container (

              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(21),bottomLeft: Radius.circular(21))
              ),
              margin: EdgeInsets.only(left: 15,right: 15),
              padding: EdgeInsets.only(top: 20,bottom: 20),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: ClipRRect(
                  borderRadius:BorderRadius.circular(15),
                  child: BarcodeWidget(data: 'https://github.com/Nadagamal2',barcode: Barcode.code128(),
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 70,



                  ),
                ),
              ),
            ),
            Gap(20),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child:   TicketView(
                ticket: ticketList[0],

              ),
            )



          ],
        ),
        Positioned(
          left: AppLayout.getHeight(23),
          top: AppLayout.getHeight(295),
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Styles.textColor ,width: 2)
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,

            ),
          ),
        ),
        Positioned(
          right: AppLayout.getHeight(23),
          top: AppLayout.getHeight(295),
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Styles.textColor ,width: 2)
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,

            ),
          ),
        ),
      ]),
    );
  }
}
