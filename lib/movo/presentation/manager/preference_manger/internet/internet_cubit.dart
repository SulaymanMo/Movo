import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

part 'internet_state.dart';

class InternetCubit extends Cubit<InternetState> {
  StreamSubscription? _stream;
  final Connectivity _connectivity = Connectivity();

  InternetCubit() : super(InitialState()) {
    _startupCheck();
    _stream = _connectivity.onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.mobile ||
          event == ConnectivityResult.wifi) {
        emit(Connected());
      } else {
        emit(Disconnected());
      }
    });
  }

  Future<void> _startupCheck() async {
    final ConnectivityResult check = await _connectivity.checkConnectivity();
    if (check == ConnectivityResult.mobile ||
        check == ConnectivityResult.wifi) {
      emit(Connected());
    } else {
      emit(Disconnected());
    }
  }

  @override
  Future<void> close() async {
    _stream?.cancel();
    return super.close();
  }
}

// ? HomeRepoImp
// check net if [true]
// fetch
// cache || replace cache if existed
// return cache

// check net if [false]
// return cache

// !
 
// ? Each Cubit
// bool _fetched = false;
// if !_fetched
// call api
// _fetched = !_fetched

// ? MovieView has 4 ValueKeys for each MovieBase
// when scroll to each MovieBase trigger it's cubit
// _fetched = true; in the cubit

// !

// Movies cubit on nav body {done}.


