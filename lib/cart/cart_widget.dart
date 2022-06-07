import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import '../sucessful_purchase/sucessful_purchase_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({Key key}) : super(key: key);

  @override
  _CartWidgetState createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF235DF2),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                duration: Duration(milliseconds: 0),
                reverseDuration: Duration(milliseconds: 0),
                child: NavBarPage(initialPage: 'HomePage'),
              ),
            );
          },
        ),
        title: Text(
          'Cart',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: Color(0xFFF1F4F8),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: StreamBuilder<List<CartRecord>>(
                      stream: queryCartRecord(
                        queryBuilder: (cartRecord) => cartRecord.where('uid',
                            isEqualTo: FFAppState().USER),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ),
                          );
                        }
                        List<CartRecord> listViewCartRecordList = snapshot.data;
                        return InkWell(
                          onTap: () async {
                            setState(() => FFAppState()
                                .CartPrices
                                .add(listViewCartRecordList.length.toDouble()));
                          },
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewCartRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewCartRecord =
                                  listViewCartRecordList[listViewIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 0, 16, 8),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 3,
                                          color: Color(0x411D2429),
                                          offset: Offset(0, 1),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 1, 1, 1),
                                            child: InkWell(
                                              onTap: () async {
                                                await Navigator.push(
                                                  context,
                                                  PageTransition(
                                                    type:
                                                        PageTransitionType.fade,
                                                    child:
                                                        FlutterFlowExpandedImageView(
                                                      image: Image.network(
                                                        listViewCartRecord
                                                            .imagePath,
                                                        fit: BoxFit.contain,
                                                      ),
                                                      allowRotation: false,
                                                      tag: listViewCartRecord
                                                          .imagePath,
                                                      useHeroAnimation: true,
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Hero(
                                                tag: listViewCartRecord
                                                    .imagePath,
                                                transitionOnUserGestures: true,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                  child: Image.network(
                                                    listViewCartRecord
                                                        .imagePath,
                                                    width: 80,
                                                    height: 80,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8, 8, 4, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    listViewCartRecord.name,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title3
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF0F1113),
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30,
                                                        borderWidth: 1,
                                                        buttonSize: 40,
                                                        icon: Icon(
                                                          Icons.remove,
                                                          color: Colors.black,
                                                          size: 20,
                                                        ),
                                                        onPressed: () async {
                                                          final usersUpdateData =
                                                              {
                                                            'totalCart': FieldValue
                                                                .increment(
                                                                    -(listViewCartRecord
                                                                        .price)),
                                                          };
                                                          await currentUserReference
                                                              .update(
                                                                  usersUpdateData);

                                                          final cartUpdateData =
                                                              {
                                                            'quantity':
                                                                FieldValue
                                                                    .increment(
                                                                        -(1.0)),
                                                          };
                                                          await listViewCartRecord
                                                              .reference
                                                              .update(
                                                                  cartUpdateData);
                                                          await Navigator.push(
                                                            context,
                                                            PageTransition(
                                                              type:
                                                                  PageTransitionType
                                                                      .fade,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      300),
                                                              reverseDuration:
                                                                  Duration(
                                                                      milliseconds:
                                                                          300),
                                                              child: NavBarPage(
                                                                  initialPage:
                                                                      'Cart'),
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                      Text(
                                                        listViewCartRecord
                                                            .quantity
                                                            .toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30,
                                                        borderWidth: 1,
                                                        buttonSize: 40,
                                                        icon: Icon(
                                                          Icons.add,
                                                          color: Colors.black,
                                                          size: 20,
                                                        ),
                                                        onPressed: () async {
                                                          final usersUpdateData =
                                                              {
                                                            'totalCart': FieldValue
                                                                .increment(
                                                                    listViewCartRecord
                                                                        .price),
                                                          };
                                                          await currentUserReference
                                                              .update(
                                                                  usersUpdateData);

                                                          final cartUpdateData =
                                                              {
                                                            'quantity':
                                                                FieldValue
                                                                    .increment(
                                                                        1.0),
                                                          };
                                                          await listViewCartRecord
                                                              .reference
                                                              .update(
                                                                  cartUpdateData);
                                                          await Navigator.push(
                                                            context,
                                                            PageTransition(
                                                              type:
                                                                  PageTransitionType
                                                                      .fade,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      300),
                                                              reverseDuration:
                                                                  Duration(
                                                                      milliseconds:
                                                                          300),
                                                              child: NavBarPage(
                                                                  initialPage:
                                                                      'Cart'),
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 4, 0, 0),
                                                child: InkWell(
                                                  onTap: () async {
                                                    var confirmDialogResponse =
                                                        await showDialog<bool>(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return AlertDialog(
                                                                  title: Text(
                                                                      'Are you sure you want to remove this item?'),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed: () => Navigator.pop(
                                                                          alertDialogContext,
                                                                          false),
                                                                      child: Text(
                                                                          'No'),
                                                                    ),
                                                                    TextButton(
                                                                      onPressed: () => Navigator.pop(
                                                                          alertDialogContext,
                                                                          true),
                                                                      child: Text(
                                                                          'Yes'),
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            ) ??
                                                            false;
                                                    if (confirmDialogResponse) {
                                                      final usersUpdateData = {
                                                        'totalCart': FieldValue
                                                            .increment(
                                                                -(listViewCartRecord
                                                                    .price)),
                                                      };
                                                      await currentUserReference
                                                          .update(
                                                              usersUpdateData);
                                                      await listViewCartRecord
                                                          .reference
                                                          .delete();
                                                      await Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .fade,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  300),
                                                          reverseDuration:
                                                              Duration(
                                                                  milliseconds:
                                                                      300),
                                                          child: NavBarPage(
                                                              initialPage:
                                                                  'Cart'),
                                                        ),
                                                      );
                                                    }
                                                  },
                                                  child: Icon(
                                                    Icons.delete,
                                                    color: Color(0xFFFF0000),
                                                    size: 24,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 12, 4, 8),
                                                child: Text(
                                                  formatNumber(
                                                    listViewCartRecord.price,
                                                    formatType:
                                                        FormatType.custom,
                                                    currency: '€',
                                                    format: '',
                                                    locale: '',
                                                  ),
                                                  textAlign: TextAlign.end,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title3,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                color: Color(0x00FFFFFF),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 100, 16, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Text(
                              'Total:  ',
                              textAlign: TextAlign.end,
                              style: FlutterFlowTheme.of(context).title3,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: AuthUserStreamWidget(
                              child: Text(
                                formatNumber(
                                  valueOrDefault(
                                      currentUserDocument?.totalCart, 0.0),
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.automatic,
                                  currency: '€',
                                ),
                                textAlign: TextAlign.end,
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    StreamBuilder<List<CartRecord>>(
                      stream: queryCartRecord(
                        queryBuilder: (cartRecord) => cartRecord.where('uid',
                            isEqualTo: FFAppState().USER),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ),
                          );
                        }
                        List<CartRecord> menuItemCartRecordList = snapshot.data;
                        return InkWell(
                          onTap: () async {
                            var confirmDialogResponse = await showDialog<bool>(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text(
                                          'Are you sure you want to buy these items?'),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, false),
                                          child: Text('No'),
                                        ),
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, true),
                                          child: Text('Yes'),
                                        ),
                                      ],
                                    );
                                  },
                                ) ??
                                false;
                            if (confirmDialogResponse) {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      SucessfulPurchaseWidget(),
                                ),
                              );
                            }
                          },
                          child: Material(
                            color: Colors.transparent,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              width: 180,
                              decoration: BoxDecoration(
                                color: Color(0xFF235DF2),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: Color(0x411D2429),
                                    offset: Offset(0, 1),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        'Buy',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              fontSize: 30,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
