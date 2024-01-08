package com.tikpikshortvideosocialnetworking.app.modules.tellusaboutyourself.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class TellUsAboutYourselfModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? =
      MyApp.getInstance().resources.getString(R.string.msg_tell_us_about_yourself)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtChooseYourIdentity: String? =
      MyApp.getInstance().resources.getString(R.string.msg_choose_your_identity)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMale: String? = MyApp.getInstance().resources.getString(R.string.lbl_male)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFemale: String? = MyApp.getInstance().resources.getString(R.string.lbl_female)

)
