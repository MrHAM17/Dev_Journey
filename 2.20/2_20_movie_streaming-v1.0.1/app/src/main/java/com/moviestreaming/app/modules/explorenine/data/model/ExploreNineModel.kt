package com.moviestreaming.app.modules.explorenine.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class ExploreNineModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtBestMovie: String? = MyApp.getInstance().resources.getString(R.string.lbl_discover_movie)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMore: String? = MyApp.getInstance().resources.getString(R.string.lbl_more)
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
  var txtCategoriesYouLike: String? =
      MyApp.getInstance().resources.getString(R.string.msg_categories_you_like)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAction: String? = MyApp.getInstance().resources.getString(R.string.lbl_drama)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMore1: String? = MyApp.getInstance().resources.getString(R.string.lbl_more)

)
