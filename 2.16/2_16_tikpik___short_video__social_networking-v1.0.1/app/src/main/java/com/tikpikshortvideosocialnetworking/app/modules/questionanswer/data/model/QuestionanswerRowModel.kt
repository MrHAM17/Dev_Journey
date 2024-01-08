package com.tikpikshortvideosocialnetworking.app.modules.questionanswer.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class QuestionanswerRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtBennySpanbauer: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_benny_spanbauer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWhatIsYourFavorite: String? =
      MyApp.getInstance().resources.getString(R.string.msg_what_is_your_favorite)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSevenHundredThirtySix: String? = MyApp.getInstance().resources.getString(R.string.lbl_736)

)
