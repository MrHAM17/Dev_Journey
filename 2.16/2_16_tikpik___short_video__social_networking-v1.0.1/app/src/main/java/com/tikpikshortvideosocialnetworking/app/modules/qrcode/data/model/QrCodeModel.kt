package com.tikpikshortvideosocialnetworking.app.modules.qrcode.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class QrCodeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAndrewAinsley: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_andrew_ainsley3)

)
