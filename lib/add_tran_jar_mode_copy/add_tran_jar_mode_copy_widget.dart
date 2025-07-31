import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/gold_coin_draggable_widget.dart';
import '/components/jar_drag_target_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_tran_jar_mode_copy_model.dart';
export 'add_tran_jar_mode_copy_model.dart';

class AddTranJarModeCopyWidget extends StatefulWidget {
  const AddTranJarModeCopyWidget({super.key});

  static String routeName = 'AddTranJarModeCopy';
  static String routePath = '/addTranJarModeCopy';

  @override
  State<AddTranJarModeCopyWidget> createState() =>
      _AddTranJarModeCopyWidgetState();
}

class _AddTranJarModeCopyWidgetState extends State<AddTranJarModeCopyWidget> {
  late AddTranJarModeCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddTranJarModeCopyModel());
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FutureBuilder<List<CategoriesWithIconRow>>(
                future: CategoriesWithIconTable().querySingleRow(
                  queryFn: (q) => q.eqOrNull(
                    'user_id',
                    currentUserUid,
                  ),
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
                      gridViewCategoriesWithIconRowList = snapshot.data!;

                  final gridViewCategoriesWithIconRow =
                      gridViewCategoriesWithIconRowList.isNotEmpty
                          ? gridViewCategoriesWithIconRowList.first
                          : null;

                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.jarDragTargetModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: JarDragTargetWidget(
                                categoryId: gridViewCategoriesWithIconRow!.id!,
                                jarUrl: gridViewCategoriesWithIconRow!.iconUrl!,
                                label: gridViewCategoriesWithIconRow!.name!,
                                categoryType:
                                    gridViewCategoriesWithIconRow!.type!,
                                isTransfer: (String categoryType) {
                                  return categoryType == "TRANS";
                                }(gridViewCategoriesWithIconRow!.type!),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.jarDragTargetModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: JarDragTargetWidget(
                                categoryId: gridViewCategoriesWithIconRow!.id!,
                                jarUrl: gridViewCategoriesWithIconRow!.iconUrl!,
                                label: gridViewCategoriesWithIconRow!.name!,
                                categoryType:
                                    gridViewCategoriesWithIconRow!.type!,
                                isTransfer: (String categoryType) {
                                  return categoryType == "TRANS";
                                }(gridViewCategoriesWithIconRow!.type!),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.jarDragTargetModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: JarDragTargetWidget(
                                categoryId: gridViewCategoriesWithIconRow!.id!,
                                jarUrl: gridViewCategoriesWithIconRow!.iconUrl!,
                                label: gridViewCategoriesWithIconRow!.name!,
                                categoryType:
                                    gridViewCategoriesWithIconRow!.type!,
                                isTransfer: (String categoryType) {
                                  return categoryType == "TRANS";
                                }(gridViewCategoriesWithIconRow!.type!),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.jarDragTargetModel4,
                              updateCallback: () => safeSetState(() {}),
                              child: JarDragTargetWidget(
                                categoryId: gridViewCategoriesWithIconRow!.id!,
                                jarUrl: gridViewCategoriesWithIconRow!.iconUrl!,
                                label: gridViewCategoriesWithIconRow!.name!,
                                categoryType:
                                    gridViewCategoriesWithIconRow!.type!,
                                isTransfer: (String categoryType) {
                                  return categoryType == "TRANS";
                                }(gridViewCategoriesWithIconRow!.type!),
                              ),
                            ),
                          ),
                        ]
                            .divide(SizedBox(width: 12.0))
                            .around(SizedBox(width: 12.0)),
                      ),
                    ]
                        .divide(SizedBox(height: 12.0))
                        .around(SizedBox(height: 12.0)),
                  );
                },
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: wrapWithModel(
                      model: _model.goldCoinDraggableModel,
                      updateCallback: () => safeSetState(() {}),
                      child: GoldCoinDraggableWidget(),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: FutureBuilder<List<CategoriesWithIconRow>>(
                  future: CategoriesWithIconTable().queryRows(
                    queryFn: (q) => q.eqOrNull(
                      'user_id',
                      currentUserUid,
                    ),
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
                        gridViewCategoriesWithIconRowList = snapshot.data!;

                    return GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 1.0,
                      ),
                      scrollDirection: Axis.vertical,
                      itemCount: gridViewCategoriesWithIconRowList.length,
                      itemBuilder: (context, gridViewIndex) {
                        final gridViewCategoriesWithIconRow =
                            gridViewCategoriesWithIconRowList[gridViewIndex];
                        return JarDragTargetWidget(
                          key: Key(
                              'Keyb89_${gridViewIndex}_of_${gridViewCategoriesWithIconRowList.length}'),
                          categoryId: gridViewCategoriesWithIconRow.id!,
                          jarUrl: gridViewCategoriesWithIconRow.iconUrl!,
                          label: gridViewCategoriesWithIconRow.name!,
                          categoryType: gridViewCategoriesWithIconRow.type!,
                          isTransfer: (String baseTransType) {
                            return baseTransType == "TRANS";
                          }(gridViewCategoriesWithIconRow.type!),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
