package com.tikpikshortvideosocialnetworking.app.modules.searchresultsvideos.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class SearchresultsvideosRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtK: String? = MyApp.getInstance().resources.getString(R.string.lbl_837_5k)

)
