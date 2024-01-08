package com.fashionistaecommerceapp.app.modules.chat.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ChatModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtMahbuba: String? = MyApp.getInstance().resources.getString(R.string.lbl_mahbuba)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOnline: String? = MyApp.getInstance().resources.getString(R.string.lbl_online)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYesterday: String? = MyApp.getInstance().resources.getString(R.string.lbl_yesterday)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHiAnneIamFashionExpertHowmayIh: String? =
      MyApp.getInstance().resources.getString(R.string.msg_hi_anne_i_am_fashion)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_18_27)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime1: String? = MyApp.getInstance().resources.getString(R.string.lbl_0_37)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime2: String? = MyApp.getInstance().resources.getString(R.string.lbl_18_27)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHiAnneIamFashionExpertHowmayIh1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_hi_anne_i_am_fashion)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime3: String? = MyApp.getInstance().resources.getString(R.string.lbl_18_27)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHidontworryIamhereLe: String? =
      MyApp.getInstance().resources.getString(R.string.msg_hi_don_t_worry)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime4: String? = MyApp.getInstance().resources.getString(R.string.lbl_18_27)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHiAnneIamFashionExpertHowmayIh2: String? =
      MyApp.getInstance().resources.getString(R.string.msg_hi_anne_i_am_fashion)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime5: String? = MyApp.getInstance().resources.getString(R.string.lbl_18_27)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMahbubaIsTyping: String? =
      MyApp.getInstance().resources.getString(R.string.msg_mahbuba_is_typing)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etMessageValue: String? = null
)
