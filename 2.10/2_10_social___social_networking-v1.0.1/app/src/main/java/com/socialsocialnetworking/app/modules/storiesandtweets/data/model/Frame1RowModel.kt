package com.socialsocialnetworking.app.modules.storiesandtweets.`data`.model

import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class Frame1RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAlbertOConnor1: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_albert_o_connor)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration1: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_hours_ago)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtIntroduceIAmA1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_introduce_i_am_a)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZipcode: String? = MyApp.getInstance().resources.getString(R.string.lbl_2200)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEightHundred: String? = MyApp.getInstance().resources.getString(R.string.lbl_800)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAlbertOConnor2: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_albert_o_connor)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration2: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_hours_ago)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtIntroduceIAmA2: String? =
      MyApp.getInstance().resources.getString(R.string.msg_introduce_i_am_a)

)
