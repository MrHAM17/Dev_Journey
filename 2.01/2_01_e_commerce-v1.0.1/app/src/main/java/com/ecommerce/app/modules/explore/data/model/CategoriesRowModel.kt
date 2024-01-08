package com.ecommerce.app.modules.explore.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class CategoriesRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOfficeBag: String? = MyApp.getInstance().resources.getString(R.string.lbl_office_bag)

)
