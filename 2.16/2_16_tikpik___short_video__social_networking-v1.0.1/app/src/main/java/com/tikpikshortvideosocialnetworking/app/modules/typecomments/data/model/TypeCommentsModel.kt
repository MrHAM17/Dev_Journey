package com.tikpikshortvideosocialnetworking.app.modules.typecomments.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class TypeCommentsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtKComments: String? = MyApp.getInstance().resources.getString(R.string.lbl_24_8k_comments)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etCategoriesGiftComponentAdditioValue: String? = null
)
