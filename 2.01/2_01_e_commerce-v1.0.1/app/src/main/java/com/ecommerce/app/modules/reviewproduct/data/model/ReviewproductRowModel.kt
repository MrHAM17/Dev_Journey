package com.ecommerce.app.modules.reviewproduct.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class ReviewproductRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtJamesLawson: String? = MyApp.getInstance().resources.getString(R.string.lbl_james_lawson)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_air_max_are_always)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonth: String? = MyApp.getInstance().resources.getString(R.string.msg_december_10_2016)

)
