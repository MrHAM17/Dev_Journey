package com.housitbuyrentsellproperty.app.modules.formdetail.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class FormDetailModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPageTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_add_listing)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? = MyApp.getInstance().resources.getString(R.string.msg_hi_josh_fill_detail)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtListingtype: String? = MyApp.getInstance().resources.getString(R.string.lbl_listing_type)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPropertycategory: String? =
      MyApp.getInstance().resources.getString(R.string.msg_property_category)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etFormPasswordValue: String? = null
)
