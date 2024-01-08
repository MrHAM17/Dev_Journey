package com.fashionistaecommerceapp.app.modules.writeareview.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class WriteAReviewModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLetSSignIn: String? = MyApp.getInstance().resources.getString(R.string.lbl_write_a_review)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJacket: String? = MyApp.getInstance().resources.getString(R.string.lbl_jacket)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBlackJacket: String? = MyApp.getInstance().resources.getString(R.string.lbl_black_jacket)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSizeXL: String? = MyApp.getInstance().resources.getString(R.string.lbl_size_xl)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_134_98)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAddPhotoOrVideo: String? =
      MyApp.getInstance().resources.getString(R.string.msg_add_photo_or_video)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtClickHereToUpload: String? =
      MyApp.getInstance().resources.getString(R.string.msg_click_here_to_upload)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWriteYorReview: String? =
      MyApp.getInstance().resources.getString(R.string.msg_write_yor_review)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCharactersremaining: String? =
      MyApp.getInstance().resources.getString(R.string.msg_350_characters_remaining)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etInputFieldsValue: String? = null
)
