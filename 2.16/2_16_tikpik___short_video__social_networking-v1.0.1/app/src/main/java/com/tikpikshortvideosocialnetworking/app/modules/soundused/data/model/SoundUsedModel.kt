package com.tikpikshortvideosocialnetworking.app.modules.soundused.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class SoundUsedModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtBeautifulGirlBy: String? =
      MyApp.getInstance().resources.getString(R.string.msg_beautiful_girl_by)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance: String? = MyApp.getInstance().resources.getString(R.string.lbl_28_7m_videos)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtName: String? = MyApp.getInstance().resources.getString(R.string.lbl_sean_kingston)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtInformation: String? =
      MyApp.getInstance().resources.getString(R.string.msg_professional_singer)

)
