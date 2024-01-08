package com.moviestreaming.app.modules.exploreseven.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class ExploreSevenModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNons: String? = MyApp.getInstance().resources.getString(R.string.lbl_explore)
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
  var txtMore: String? = MyApp.getInstance().resources.getString(R.string.lbl_more)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAction1: String? = MyApp.getInstance().resources.getString(R.string.lbl_action)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMore1: String? = MyApp.getInstance().resources.getString(R.string.lbl_more)

)
