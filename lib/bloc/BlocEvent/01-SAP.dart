import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

import '../../data/dummy.dart';
import '../../data/global.dart';
import '../../data/model.dart';

//-------------------------------------------------

String server = GLOserver;

abstract class LOADSAP_Event {}

class LOADSAP_Pressed extends LOADSAP_Event {}

class LOADSAP_Bloc extends Bloc<LOADSAP_Event, List<dataset>> {
  LOADSAP_Bloc() : super([]) {
    on<LOADSAP_Pressed>((event, emit) {
      return _LOADSAP_Function_01([], emit);
    });
  }
  Future<void> _LOADSAP_Function_01(
      List<dataset> toAdd, Emitter<List<dataset>> emit) async {
    // final response = await Dio().post(
    //   server + "sap",
    //   data: {},
    // );
    List<dataset> output = [];
    // if (response.statusCode == 200) {
    //   var databuff = response.data;
    var databuff = datadummy;
    for (int i = 0; i < databuff.length; i++) {
      output.add(dataset(
        id: i,
        f01: databuff[i]['PO'].toString(),
        f02: databuff[i]['SEQUENCE'].toString(),
        f03: databuff[i]['DATE_START'].toString(),
        f04: databuff[i]['TIME_START'].toString(),
        f05: databuff[i]['TIME_FINISH'].toString(),
        f06: databuff[i]['CP'].toString(),
        f07: databuff[i]['FG'].toString(),
        f08: databuff[i]['STATUS'].toString(),
        f09: databuff[i]['QUANTITY'].toString(),
        f10: databuff[i]['UNIT'].toString(),
        f11: databuff[i]['COSTCENTER'].toString(),
        f12: databuff[i]['FURNACE'].toString(),
        f13: databuff[i]['STATUS_PLAN'].toString(),
        f14: databuff[i]['OILTYPE'].toString(),
        f15: databuff[i]['FN_FixMC4'].toString(),
        f16: databuff[i]['PART'].toString(),
        f17: databuff[i]['PARTNAME'].toString(),
        f18: databuff[i]['MATERIAL'].toString(),
        f19: databuff[i]['CUSTOMER'].toString(),
        f20: databuff[i]['PROCESS'].toString(),
        f21: databuff[i]['STADATE'].toString(),
        f22: databuff[i]['STATIME'].toString(),
        f23: databuff[i]['FINDATE'].toString(),
        f24: databuff[i]['FINTIME'].toString(),
        f25: databuff[i]['WGT_PC'].toString(),
        f26: databuff[i]['WGT_JIG'].toString(),
        f27: databuff[i]['ACTQTY'].toString(),
        f28: databuff[i]['CUSLOTNO'].toString(),
        f29: databuff[i]['STDTIME400'].toString(),
        f30: databuff[i]['FG_CHARG'].toString(),
        f31: databuff[i]['PK_STADATE'].toString(),
        f32: databuff[i]['PK_STATIME'].toString(),
        f33: databuff[i]['PK_FINDATE'].toString(),
        f34: databuff[i]['PK_FINTIME'].toString(),
        f35: databuff[i]['CUSTNAME'].toString(),
      ));
      //   }
      // } else {
      //   //
    }
    emit(output);
  }
}
