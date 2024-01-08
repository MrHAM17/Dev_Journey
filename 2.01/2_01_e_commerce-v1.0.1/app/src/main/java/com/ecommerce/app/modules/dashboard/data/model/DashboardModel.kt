package com.ecommerce.app.modules.dashboard.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class DashboardModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSearchProduct: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_search_product)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCategory: String? = MyApp.getInstance().resources.getString(R.string.lbl_category)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMoreCategoryLink: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_more_category)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFlashSale: String? = MyApp.getInstance().resources.getString(R.string.lbl_flash_sale)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeMoreLink: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_more)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMegaSale: String? = MyApp.getInstance().resources.getString(R.string.lbl_mega_sale)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeMoreLink1: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_more)

)
