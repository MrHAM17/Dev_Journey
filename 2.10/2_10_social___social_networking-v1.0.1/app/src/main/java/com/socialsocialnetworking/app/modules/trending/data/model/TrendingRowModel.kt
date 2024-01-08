package com.socialsocialnetworking.app.modules.trending.`data`.model

import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class TrendingRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRickOnad: String? = MyApp.getInstance().resources.getString(R.string.lbl_rick_onad)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_40_min_ago)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtThisIsTheMoment: String? =
      MyApp.getInstance().resources.getString(R.string.msg_this_is_the_moment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHuge: String? = MyApp.getInstance().resources.getString(R.string.lbl_huge)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFotography: String? = MyApp.getInstance().resources.getString(R.string.lbl_fotography)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNature: String? = MyApp.getInstance().resources.getString(R.string.lbl_nature)

)
