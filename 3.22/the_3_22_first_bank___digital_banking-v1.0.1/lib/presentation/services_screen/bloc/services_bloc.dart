import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/lifeinsurancefilled_item_model.dart';
import '../models/loanone_item_model.dart';
import 'package:the_3_22_first_bank___digital_banking/presentation/services_screen/models/services_model.dart';
part 'services_event.dart';
part 'services_state.dart';

/// A bloc that manages the state of a Services according to the event that is dispatched to it.
class ServicesBloc extends Bloc<ServicesEvent, ServicesState> {
  ServicesBloc(ServicesState initialState) : super(initialState) {
    on<ServicesInitialEvent>(_onInitialize);
  }

  List<LifeinsurancefilledItemModel> fillLifeinsurancefilledItemList() {
    return [
      LifeinsurancefilledItemModel(
          lifeInsuranceFilled: ImageConstant.imgLifeInsuranceFilled,
          lifeInsurance: "Life Insurance",
          unlimitedProtection: "Unlimited protection"),
      LifeinsurancefilledItemModel(
          lifeInsuranceFilled: ImageConstant.imgBag1,
          lifeInsurance: "Shopping",
          unlimitedProtection: "Buy. Think. Grow"),
      LifeinsurancefilledItemModel(
          lifeInsuranceFilled: ImageConstant.imgShield1,
          lifeInsurance: "Safety",
          unlimitedProtection: "We are your allies")
    ];
  }

  List<LoanoneItemModel> fillLoanoneItemList() {
    return [
      LoanoneItemModel(
          loanOne: ImageConstant.imgLoan1,
          businessLoans: "Business loans",
          itisalongestablished: "It is a long established ",
          viewDetails: "View Details"),
      LoanoneItemModel(
          loanOne: ImageConstant.imgBriefcase1,
          businessLoans: "Checking accounts",
          itisalongestablished: "It is a long established ",
          viewDetails: "View Details"),
      LoanoneItemModel(
          loanOne: ImageConstant.imgGroup,
          businessLoans: "Savings accounts",
          itisalongestablished: "It is a long established ",
          viewDetails: "View Details"),
      LoanoneItemModel(
          loanOne: ImageConstant.imgUser32,
          businessLoans: "Debit and credit cards",
          itisalongestablished: "It is a long established ",
          viewDetails: "View Details"),
      LoanoneItemModel(
          loanOne: ImageConstant.imgShield1,
          businessLoans: "Life Insurance",
          itisalongestablished: "It is a long established ",
          viewDetails: "View Details"),
      LoanoneItemModel(
          loanOne: ImageConstant.imgLoan1,
          businessLoans: "Business loans",
          itisalongestablished: "It is a long established ",
          viewDetails: "View Details")
    ];
  }

  _onInitialize(
    ServicesInitialEvent event,
    Emitter<ServicesState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        servicesModelObj: state.servicesModelObj?.copyWith(
      lifeinsurancefilledItemList: fillLifeinsurancefilledItemList(),
      loanoneItemList: fillLoanoneItemList(),
    )));
  }
}
