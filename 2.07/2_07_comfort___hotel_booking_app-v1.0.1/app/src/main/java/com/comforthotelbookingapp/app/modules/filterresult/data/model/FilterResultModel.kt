package com.comforthotelbookingapp.app.modules.filterresult.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class FilterResultModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRecommended: String? =
      MyApp.getInstance().resources.getString(R.string.msg_recommended_586_379)

)
