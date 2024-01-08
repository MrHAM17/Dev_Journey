package com.vertexrealestateapp.app.modules.addnewpropertydetails.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class AddNewPropertyDetailsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTittle: String? = MyApp.getInstance().resources.getString(R.string.msg_primary_apartment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOceanAvenue: String? =
      MyApp.getInstance().resources.getString(R.string.msg_701_ocean_avenue)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBathroom: String? = MyApp.getInstance().resources.getString(R.string.lbl_bathroom)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRoomsCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_2_rooms)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBedroom: String? = MyApp.getInstance().resources.getString(R.string.lbl_bedroom)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRoomsCounter1: String? = MyApp.getInstance().resources.getString(R.string.lbl_3_rooms)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSquare: String? = MyApp.getInstance().resources.getString(R.string.lbl_square)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFtCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_1_880_ft)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtInformation: String? = MyApp.getInstance().resources.getString(R.string.lbl_information)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRelaxEstimate: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_relax_estimate)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_6_345_00)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration: String? = MyApp.getInstance().resources.getString(R.string.lbl_5_years)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtS: String? = MyApp.getInstance().resources.getString(R.string.lbl_s)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtM: String? = MyApp.getInstance().resources.getString(R.string.lbl_m)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtT: String? = MyApp.getInstance().resources.getString(R.string.lbl_t)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtW: String? = MyApp.getInstance().resources.getString(R.string.lbl_w)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtT1: String? = MyApp.getInstance().resources.getString(R.string.lbl_t)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtF: String? = MyApp.getInstance().resources.getString(R.string.lbl_f)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtS1: String? = MyApp.getInstance().resources.getString(R.string.lbl_s)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_4k)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice2: String? = MyApp.getInstance().resources.getString(R.string.lbl_3k)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice3: String? = MyApp.getInstance().resources.getString(R.string.lbl_2k)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice4: String? = MyApp.getInstance().resources.getString(R.string.lbl_1)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNearbyProperties: String? =
      MyApp.getInstance().resources.getString(R.string.msg_nearby_properties)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMightyCincoFamily: String? =
      MyApp.getInstance().resources.getString(R.string.msg_mighty_cinco_family)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJakartaIndonesia: String? =
      MyApp.getInstance().resources.getString(R.string.msg_jakarta_indonesia)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice5: String? = MyApp.getInstance().resources.getString(R.string.lbl_price)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice6: String? = MyApp.getInstance().resources.getString(R.string.lbl_436)

)
