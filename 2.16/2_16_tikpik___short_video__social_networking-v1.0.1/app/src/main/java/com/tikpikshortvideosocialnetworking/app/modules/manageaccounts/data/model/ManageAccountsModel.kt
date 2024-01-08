package com.tikpikshortvideosocialnetworking.app.modules.manageaccounts.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class ManageAccountsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_manage_accounts)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAccountInformation: String? =
      MyApp.getInstance().resources.getString(R.string.msg_account_information)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPhoneNumber: String? = MyApp.getInstance().resources.getString(R.string.lbl_phone_number)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtThreeHundredNinetySixMillionSe: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_1_123_456_789)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmail: String? = MyApp.getInstance().resources.getString(R.string.lbl_email)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAndrewAins: String? = MyApp.getInstance().resources.getString(R.string.lbl_andrew_ains2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDateOfBirth: String? = MyApp.getInstance().resources.getString(R.string.lbl_date_of_birth)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDate: String? = MyApp.getInstance().resources.getString(R.string.lbl_27_12_1995)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAccountControl: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_account_control)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSwitchToBusiness: String? =
      MyApp.getInstance().resources.getString(R.string.msg_switch_to_business)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDeleteAccount: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_delete_account)

)
