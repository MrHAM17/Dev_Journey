package com.vertexrealestateapp.app.modules.messagechat.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class MessageChatModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRobertFox: String? = MyApp.getInstance().resources.getString(R.string.lbl_robert_fox)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOnline: String? = MyApp.getInstance().resources.getString(R.string.lbl_online)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTODAY: String? = MyApp.getInstance().resources.getString(R.string.lbl_today2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtIMLookingFor: String? =
      MyApp.getInstance().resources.getString(R.string.msg_i_m_looking_for)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_12_13)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHiSantiOfCourse: String? =
      MyApp.getInstance().resources.getString(R.string.msg_hi_santi_of_course)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime1: String? = MyApp.getInstance().resources.getString(R.string.lbl_12_15)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime2: String? = MyApp.getInstance().resources.getString(R.string.msg_that_s_great_thank)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime3: String? = MyApp.getInstance().resources.getString(R.string.lbl_12_18)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOfCourseSeeYou: String? =
      MyApp.getInstance().resources.getString(R.string.msg_of_course_see_you)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime4: String? = MyApp.getInstance().resources.getString(R.string.lbl_12_19)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etTypeMessageValue: String? = null
)
