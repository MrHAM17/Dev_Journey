package com.shopsieecommerceapp.app.modules.mainlanding.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class MainLandingModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtShopsie: String? = MyApp.getInstance().resources.getString(R.string.lbl_shopsie)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSEASONSALE: String? = MyApp.getInstance().resources.getString(R.string.lbl_season_sale)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOffer: String? = MyApp.getInstance().resources.getString(R.string.lbl_up_to_60_off)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTrendingNow: String? = MyApp.getInstance().resources.getString(R.string.lbl_trending_now)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtActualCategories: String? =
      MyApp.getInstance().resources.getString(R.string.msg_actual_categories)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOnlyTrustedBrands: String? =
      MyApp.getInstance().resources.getString(R.string.msg_only_trusted_brands)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNEWARRIVAL: String? = MyApp.getInstance().resources.getString(R.string.lbl_new_arrival)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_fall_2021)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRecomendedLooks: String? =
      MyApp.getInstance().resources.getString(R.string.msg_recomended_looks)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtGender: String? = MyApp.getInstance().resources.getString(R.string.lbl_gender)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtStyle: String? = MyApp.getInstance().resources.getString(R.string.lbl_style)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPriceRange: String? = MyApp.getInstance().resources.getString(R.string.lbl_price_range)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtInThisLook: String? = MyApp.getInstance().resources.getString(R.string.lbl_in_this_look)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOffer1: String? = MyApp.getInstance().resources.getString(R.string.lbl_get_20_off)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLeaveYourEmail: String? =
      MyApp.getInstance().resources.getString(R.string.msg_leave_your_email)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtShopsie1: String? = MyApp.getInstance().resources.getString(R.string.lbl_2021_shopsie)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrivacyCookies: String? =
      MyApp.getInstance().resources.getString(R.string.msg_privacy_cookies)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTsCs: String? = MyApp.getInstance().resources.getString(R.string.lbl_ts_cs)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etEmailValue: String? = null
)
