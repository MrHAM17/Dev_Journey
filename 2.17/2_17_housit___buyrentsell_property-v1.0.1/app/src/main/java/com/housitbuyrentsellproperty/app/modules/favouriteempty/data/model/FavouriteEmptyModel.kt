package com.housitbuyrentsellproperty.app.modules.favouriteempty.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class FavouriteEmptyModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPageTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_my_favorite)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_0)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEstates: String? = MyApp.getInstance().resources.getString(R.string.lbl_estates)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText1: String? = MyApp.getInstance().resources.getString(R.string.lbl4)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleToStayIn: String? =
      MyApp.getInstance().resources.getString(R.string.msg_your_favorite_page)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_click_add_button)

)
