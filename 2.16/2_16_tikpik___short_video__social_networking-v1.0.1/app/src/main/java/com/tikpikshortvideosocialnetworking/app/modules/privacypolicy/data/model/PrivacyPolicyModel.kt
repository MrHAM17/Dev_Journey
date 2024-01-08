package com.tikpikshortvideosocialnetworking.app.modules.privacypolicy.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class PrivacyPolicyModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_privacy_policy)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTypesOfData: String? =
      MyApp.getInstance().resources.getString(R.string.msg_1_types_of_data)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUseOfYourPersonal: String? =
      MyApp.getInstance().resources.getString(R.string.msg_2_use_of_your_personal)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_magna_etiam_tempor)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDisclosureOf: String? =
      MyApp.getInstance().resources.getString(R.string.msg_3_disclosure_of)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription2: String? =
      MyApp.getInstance().resources.getString(R.string.msg_consequat_id_porta)

)
