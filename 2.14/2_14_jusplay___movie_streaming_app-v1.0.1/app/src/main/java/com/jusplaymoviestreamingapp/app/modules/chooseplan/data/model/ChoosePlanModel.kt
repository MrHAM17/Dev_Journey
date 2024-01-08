package com.jusplaymoviestreamingapp.app.modules.chooseplan.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class ChoosePlanModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtChooseYourFavorite: String? =
      MyApp.getInstance().resources.getString(R.string.msg_choose_your_favorite)

)
