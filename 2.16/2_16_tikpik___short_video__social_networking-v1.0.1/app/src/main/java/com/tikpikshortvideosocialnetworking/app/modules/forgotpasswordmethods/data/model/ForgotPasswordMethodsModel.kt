package com.tikpikshortvideosocialnetworking.app.modules.forgotpasswordmethods.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class ForgotPasswordMethodsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_forgot_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSelectWhichContact: String? =
      MyApp.getInstance().resources.getString(R.string.msg_select_which_contact)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtViaSMS: String? = MyApp.getInstance().resources.getString(R.string.lbl_via_sms)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneHundredElevenThousandOneHun: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_1_111_99)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtViaEmail: String? = MyApp.getInstance().resources.getString(R.string.lbl_via_email)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAbcGGmailCom: String? =
      MyApp.getInstance().resources.getString(R.string.msg_abc_g_gmail_com)

)
