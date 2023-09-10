import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bag_tab_event.dart';
part 'bag_tab_state.dart';
part 'bag_tab_bloc.freezed.dart';

class BagTabBloc extends Bloc<BagTabEvent, BagTabState> {
  BagTabBloc() : super(BagTabState.initial()) {
    on<BagTabEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}