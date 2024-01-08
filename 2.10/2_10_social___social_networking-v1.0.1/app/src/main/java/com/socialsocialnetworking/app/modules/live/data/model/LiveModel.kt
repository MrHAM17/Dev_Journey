package com.socialsocialnetworking.app.modules.live.`data`.model

import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class LiveModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLucasAnna: String? = MyApp.getInstance().resources.getString(R.string.lbl_lucas_anna)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtThreeThousandFiveHundredSixtee: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_35_16)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtErlikheSweetCan: String? =
      MyApp.getInstance().resources.getString(R.string.msg_erlikhe_sweet_can)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDongKhuwanSoBeautiful: String? =
      MyApp.getInstance().resources.getString(R.string.msg_dong_khuwan_so_beautiful)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etCommentValue: String? = null
)
