import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/loans_item_model.dart';
import 'package:the_3_22_first_bank___digital_banking/presentation/loans_screen/models/loans_model.dart';
part 'loans_event.dart';
part 'loans_state.dart';

/// A bloc that manages the state of a Loans according to the event that is dispatched to it.
class LoansBloc extends Bloc<LoansEvent, LoansState> {
  LoansBloc(LoansState initialState) : super(initialState) {
    on<LoansInitialEvent>(_onInitialize);
  }

  List<LoansItemModel> fillLoansItemList() {
    return [
      LoansItemModel(
          userThirtyTwo: ImageConstant.imgUser32,
          personalLoans: "Personal Loans",
          price: "50,000"),
      LoansItemModel(
          userThirtyTwo: ImageConstant.imgBriefcase1,
          personalLoans: "Corporate Loans",
          price: "100,000"),
      LoansItemModel(
          userThirtyTwo: ImageConstant.imgGraph1,
          personalLoans: "Business Loans",
          price: "500,000"),
      LoansItemModel(
          userThirtyTwo: ImageConstant.imgSupport1,
          personalLoans: "Custom Loans",
          price: "Choose Money")
    ];
  }

  _onInitialize(
    LoansInitialEvent event,
    Emitter<LoansState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        loansModelObj: state.loansModelObj?.copyWith(
      loansItemList: fillLoansItemList(),
    )));
  }
}
