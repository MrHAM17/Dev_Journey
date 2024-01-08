package com.tikpikshortvideosocialnetworking.app.modules.searchresultssounds.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class SearchresultssoundsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSoundsTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_side_to_side)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSinger: String? = MyApp.getInstance().resources.getString(R.string.lbl_ariana_grande)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_01_00)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTotal: String? = MyApp.getInstance().resources.getString(R.string.lbl_938_6k)

)
