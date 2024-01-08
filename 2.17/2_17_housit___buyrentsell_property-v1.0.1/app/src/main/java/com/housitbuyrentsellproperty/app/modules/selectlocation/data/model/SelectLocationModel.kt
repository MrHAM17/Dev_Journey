package com.housitbuyrentsellproperty.app.modules.selectlocation.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class SelectLocationModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_select_location)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSrengsengKembanganWe: String? =
      MyApp.getInstance().resources.getString(R.string.msg_srengseng_kembangan)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPetomponKecGajahmung: String? =
      MyApp.getInstance().resources.getString(R.string.msg_petompon_kec_gajahmungkur)

)
