package com.comforthotelbookingapp.app.modules.searchtype.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class SearchTypeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRecent: String? = MyApp.getInstance().resources.getString(R.string.lbl_recent)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAmsterdamNetherlands: String? =
      MyApp.getInstance().resources.getString(R.string.msg_amsterdam_netherlands)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPalazzoHotel: String? = MyApp.getInstance().resources.getString(R.string.lbl_palazzo_hotel)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBulgariHotel: String? = MyApp.getInstance().resources.getString(R.string.lbl_bulgari_hotel)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMartinezCannes: String? =
      MyApp.getInstance().resources.getString(R.string.msg_martinez_cannes)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLondonUnitedKingdom: String? =
      MyApp.getInstance().resources.getString(R.string.msg_london_united_kingdom)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPalmsCasinoHotel: String? =
      MyApp.getInstance().resources.getString(R.string.msg_palms_casino_hotel)

)
