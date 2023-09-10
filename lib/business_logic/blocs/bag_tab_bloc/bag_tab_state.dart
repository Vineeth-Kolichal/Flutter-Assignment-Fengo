part of 'bag_tab_bloc.dart';

@freezed
class BagTabState with _$BagTabState {
  const factory BagTabState({required List<Widget> chatWidgetList}) = _Initial;
  factory BagTabState.initial() => BagTabState(chatWidgetList: []);
}
