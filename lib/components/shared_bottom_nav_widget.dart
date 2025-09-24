import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';

class SharedBottomNavWidget extends StatelessWidget {
  const SharedBottomNavWidget({
    super.key,
    required this.currentPage,
  });

  final String currentPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FlutterFlowIconButton(
            borderRadius: 8.0,
            icon: Icon(
              Icons.home,
              color: currentPage == 'Summary'
                  ? FlutterFlowTheme.of(context).primary
                  : FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () async {
              if (currentPage != 'Summary') {
                context.pushNamed(SummaryWidget.routeName);
              }
            },
          ),
          FlutterFlowIconButton(
            borderRadius: 8.0,
            icon: Icon(
              Icons.list_alt,
              color: currentPage == 'Transactions'
                  ? FlutterFlowTheme.of(context).primary
                  : FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () async {
              if (currentPage != 'Transactions') {
                context.pushNamed(
                  TransactionsWidget.routeName,
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              }
            },
          ),
          FlutterFlowIconButton(
            borderRadius: 8.0,
            icon: Icon(
              Icons.task,
              color: currentPage == 'Budgets'
                  ? FlutterFlowTheme.of(context).primary
                  : FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () async {
              if (currentPage != 'Budgets') {
                context.pushNamed(
                  BudgetsWidget.routeName,
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              }
            },
          ),
          FlutterFlowIconButton(
            borderRadius: 8.0,
            icon: Icon(
              Icons.account_balance_wallet_sharp,
              color: currentPage == 'Accounts'
                  ? FlutterFlowTheme.of(context).primary
                  : FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () async {
              if (currentPage != 'Accounts') {
                context.pushNamed(
                  AccountsWidget.routeName,
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}