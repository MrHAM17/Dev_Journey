package com.healthcare.app.modules.drugdetails.`data`.model

import com.healthcare.app.R
import com.healthcare.app.appcomponents.di.MyApp
import kotlin.String

data class DrugDetailsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTopDoctor: String? = MyApp.getInstance().resources.getString(R.string.lbl_drugs_details)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOBHCombi: String? = MyApp.getInstance().resources.getString(R.string.lbl_obh_combi)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMeasurement: String? = MyApp.getInstance().resources.getString(R.string.lbl_75ml)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRatting: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_0)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtQuantityCount: String? = MyApp.getInstance().resources.getString(R.string.lbl_1)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_9_99)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? = MyApp.getInstance().resources.getString(R.string.lbl_description)

)
