package com.fashionistaecommerceapp.app.modules.mycart.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class MycartRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtJacket: String? = MyApp.getInstance().resources.getString(R.string.lbl_jacket)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBlackJacket: String? = MyApp.getInstance().resources.getString(R.string.lbl_black_jacket)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSizeXL: String? = MyApp.getInstance().resources.getString(R.string.lbl_size_xl)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_134_98)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOne: String? = MyApp.getInstance().resources.getString(R.string.lbl_1)

)
