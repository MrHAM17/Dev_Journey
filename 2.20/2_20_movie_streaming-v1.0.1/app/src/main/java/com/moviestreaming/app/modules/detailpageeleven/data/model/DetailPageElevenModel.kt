package com.moviestreaming.app.modules.detailpageeleven.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class DetailPageElevenModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_captain_marvel)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZipcode: String? = MyApp.getInstance().resources.getString(R.string.lbl_2019)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAction: String? = MyApp.getInstance().resources.getString(R.string.lbl_action)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtStar: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_5)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_1_hr_49min)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDetails: String? = MyApp.getInstance().resources.getString(R.string.lbl_details)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_fertility_and_desolation)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDirector: String? = MyApp.getInstance().resources.getString(R.string.lbl_director)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAnnaBodenRyan: String? =
      MyApp.getInstance().resources.getString(R.string.msg_anna_boden_ryan)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDirector1: String? = MyApp.getInstance().resources.getString(R.string.lbl_cast)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAnnaBodenRyan1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_brie_larson_samuel)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYouMightAlsoLike: String? =
      MyApp.getInstance().resources.getString(R.string.msg_you_might_also_like)

)
