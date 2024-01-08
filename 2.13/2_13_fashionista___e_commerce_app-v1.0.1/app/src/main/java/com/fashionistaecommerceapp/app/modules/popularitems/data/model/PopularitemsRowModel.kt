package com.fashionistaecommerceapp.app.modules.popularitems.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class PopularitemsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCasualJeansShoes: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_black_jacket)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_246_00)

)
