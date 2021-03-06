import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/BlocEvent/01-SAP.dart';
import '../bloc/cubit/Rebuild.dart';
import '../data/model.dart';
import 'P1FIRSTUI/FIRSTuiMAIN.dart';

//---------------------------------------------------------

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page1REBUILD();
  }
}

class Page1REBUILD extends StatelessWidget {
  const Page1REBUILD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocPageRebuild, bool>(
      builder: (_, e) {
        return Page1BlocTableBody();
      },
    );
  }
}

class Page1BlocTableBody extends StatelessWidget {
  const Page1BlocTableBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => LOADSAP_Bloc(),
        child: BlocBuilder<LOADSAP_Bloc, List<dataset>>(
          builder: (context, sapdata) {
            return Page1Body(sapdata: sapdata);
          },
        ));
  }
}

class Page1Body extends StatelessWidget {
  Page1Body({Key? key, this.sapdata}) : super(key: key);
  List<dataset>? sapdata;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FIRSTUIMAIN(
        sapdata: sapdata,
      ),
    );
  }
}
