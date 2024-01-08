package com.tikpikshortvideosocialnetworking.app.modules.poststemplates.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class PostsTemplatesModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOilPainting: String? = MyApp.getInstance().resources.getString(R.string.lbl_oil_painting)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPleaseUploadOne: String? =
      MyApp.getInstance().resources.getString(R.string.msg_please_upload_1)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneThousandOneHundredSixtyEigh: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_1_168)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCamera: String? = MyApp.getInstance().resources.getString(R.string.lbl_camera)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtQuick: String? = MyApp.getInstance().resources.getString(R.string.lbl_quick)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTemplates: String? = MyApp.getInstance().resources.getString(R.string.lbl_templates)

)
