package com.moviestreaming.app.modules.dashboard.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class DashboardModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNons: String? = MyApp.getInstance().resources.getString(R.string.lbl_nons)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMOONLIGHT: String? = MyApp.getInstance().resources.getString(R.string.lbl_moonlight)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSubLabel: String? = MyApp.getInstance().resources.getString(R.string.lbl_sub_label)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtStar: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_5)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSpecialForYou: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_special_for_you)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSpecialForYou1: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_upcoming_movies)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSpecialForYou2: String? = MyApp.getInstance().resources.getString(R.string.lbl_featured)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSpecialForYou3: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_upcoming_movies)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSpecialForYou4: String? = MyApp.getInstance().resources.getString(R.string.lbl_categories)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSpecialForYou5: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_special_for_you)

)
