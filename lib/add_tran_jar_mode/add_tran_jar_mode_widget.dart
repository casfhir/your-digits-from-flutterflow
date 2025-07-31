import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/gold_coin_draggable_widget.dart';
import '/components/jar_drag_target_widget.dart';
import '/components/trans_pop_up_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_tran_jar_mode_model.dart';
export 'add_tran_jar_mode_model.dart';

class AddTranJarModeWidget extends StatefulWidget {
  const AddTranJarModeWidget({super.key});

  static String routeName = 'AddTranJarMode';
  static String routePath = '/addTranJarMode';

  @override
  State<AddTranJarModeWidget> createState() => _AddTranJarModeWidgetState();
}

class _AddTranJarModeWidgetState extends State<AddTranJarModeWidget> {
  late AddTranJarModeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddTranJarModeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: FutureBuilder<List<CategoriesWithIconRow>>(
                    future: CategoriesWithIconTable().queryRows(
                      queryFn: (q) => q
                          .eqOrNull(
                            'user_id',
                            currentUserUid,
                          )
                          .order('type', ascending: true),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<CategoriesWithIconRow>
                          staggeredViewCategoriesWithIconRowList =
                          snapshot.data!;

                      return MasonryGridView.builder(
                        gridDelegate:
                            SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                        ),
                        itemCount:
                            staggeredViewCategoriesWithIconRowList.length,
                        itemBuilder: (context, staggeredViewIndex) {
                          final staggeredViewCategoriesWithIconRow =
                              staggeredViewCategoriesWithIconRowList[
                                  staggeredViewIndex];
                          return JarDragTargetWidget(
                            key: Key(
                                'Keys4v_${staggeredViewIndex}_of_${staggeredViewCategoriesWithIconRowList.length}'),
                            categoryId: staggeredViewCategoriesWithIconRow.id!,
                            jarUrl: staggeredViewCategoriesWithIconRow.jarUrl!,
                            label: staggeredViewCategoriesWithIconRow.name!,
                            categoryType:
                                staggeredViewCategoriesWithIconRow.type!,
                            isTransfer: (String categoryType) {
                              return categoryType == "TRANS";
                            }(staggeredViewCategoriesWithIconRow.type!),
                          );
                        },
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Builder(
                        builder: (context) => InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: GestureDetector(
                                    onTap: () {
                                      FocusScope.of(dialogContext).unfocus();
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    },
                                    child: TransPopUpWidget(
                                      payload: TransactionDataStruct(),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: wrapWithModel(
                            model: _model.goldCoinDraggableModel,
                            updateCallback: () => safeSetState(() {}),
                            child: GoldCoinDraggableWidget(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ].divide(SizedBox(height: 6.0)).around(SizedBox(height: 6.0)),
            ),
          ),
        ),
      ),
    );
  }
}
