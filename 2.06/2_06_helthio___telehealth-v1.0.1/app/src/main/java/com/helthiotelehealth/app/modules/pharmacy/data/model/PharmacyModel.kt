package com.helthiotelehealth.app.modules.pharmacy.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class PharmacyModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPharmacy: String? = MyApp.getInstance().resources.getString(R.string.lbl_pharmacy)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPopularProduct: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_popular_product)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtProductOnSale: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_product_on_sale)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll1: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)

)
