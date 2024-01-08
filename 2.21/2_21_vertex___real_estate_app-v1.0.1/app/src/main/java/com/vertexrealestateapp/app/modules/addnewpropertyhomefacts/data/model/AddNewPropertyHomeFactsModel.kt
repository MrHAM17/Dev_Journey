package com.vertexrealestateapp.app.modules.addnewpropertyhomefacts.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class AddNewPropertyHomeFactsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? =
      MyApp.getInstance().resources.getString(R.string.msg_add_new_property)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHomeFacts: String? = MyApp.getInstance().resources.getString(R.string.lbl_home_facts)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHomeFacts1: String? = MyApp.getInstance().resources.getString(R.string.lbl_home_facts)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtThisHelpsYour: String? =
      MyApp.getInstance().resources.getString(R.string.msg_this_helps_your)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTypeProperty: String? = MyApp.getInstance().resources.getString(R.string.lbl_type_property)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFinishedSqFt: String? =
      MyApp.getInstance().resources.getString(R.string.msg_finished_sq_ft)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLotSize: String? = MyApp.getInstance().resources.getString(R.string.lbl_lot_size)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYearBuilt: String? = MyApp.getInstance().resources.getString(R.string.lbl_year_built)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBedrooms: String? = MyApp.getInstance().resources.getString(R.string.lbl_bedrooms)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFullBaths: String? = MyApp.getInstance().resources.getString(R.string.lbl_full_baths)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSecurityDeposit: String? =
      MyApp.getInstance().resources.getString(R.string.msg_security_deposit)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonthlyRent: String? = MyApp.getInstance().resources.getString(R.string.lbl_monthly_rent)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etInputFieldsValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etInputFields1Value: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etInputFields2Value: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etInputFields3Value: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etInputFields4Value: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etPriceValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etPrice1Value: String? = null
)
