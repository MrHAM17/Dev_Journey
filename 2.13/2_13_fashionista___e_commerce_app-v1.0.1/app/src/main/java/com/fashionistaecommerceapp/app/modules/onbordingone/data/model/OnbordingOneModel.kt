package com.fashionistaecommerceapp.app.modules.onbordingone.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class OnbordingOneModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSkip: String? = MyApp.getInstance().resources.getString(R.string.lbl_skip)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCoolProduct: String? = MyApp.getInstance().resources.getString(R.string.lbl_cool_product)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_we_create_products)

)
