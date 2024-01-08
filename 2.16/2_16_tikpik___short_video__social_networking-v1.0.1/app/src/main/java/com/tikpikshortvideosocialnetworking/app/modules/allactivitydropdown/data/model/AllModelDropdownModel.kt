package com.tikpikshortvideosocialnetworking.app.modules.allactivitydropdown.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class AllModelDropdownModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtToday: String? = MyApp.getInstance().resources.getString(R.string.lbl_today)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtName: String? = MyApp.getInstance().resources.getString(R.string.msg_charolette_hanlin)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtInformation: String? =
      MyApp.getInstance().resources.getString(R.string.msg_leave_a_comment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtName1: String? = MyApp.getInstance().resources.getString(R.string.lbl_annabel_rohan)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtInformation1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_started_following)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtName2: String? = MyApp.getInstance().resources.getString(R.string.msg_sanjuanita_ordonez)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtInformation2: String? =
      MyApp.getInstance().resources.getString(R.string.msg_liked_your_video)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYesterday: String? = MyApp.getInstance().resources.getString(R.string.lbl_yesterday)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtName3: String? = MyApp.getInstance().resources.getString(R.string.lbl_clinton_mcclure)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtStartedfollowingyou: String? =
      MyApp.getInstance().resources.getString(R.string.msg_started_following)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtName4: String? = MyApp.getInstance().resources.getString(R.string.lbl_thad_eddings)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtInformation3: String? =
      MyApp.getInstance().resources.getString(R.string.msg_leave_a_comment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtThisWeek: String? = MyApp.getInstance().resources.getString(R.string.lbl_this_week)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRayfordChenail: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_rayford_chenail)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtInformation4: String? =
      MyApp.getInstance().resources.getString(R.string.msg_started_following)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAllActivity: String? = MyApp.getInstance().resources.getString(R.string.lbl_all_activity)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLikes: String? = MyApp.getInstance().resources.getString(R.string.lbl_likes)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtComments: String? = MyApp.getInstance().resources.getString(R.string.lbl_comments2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtQA: String? = MyApp.getInstance().resources.getString(R.string.lbl_q_a)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMentionsTags: String? = MyApp.getInstance().resources.getString(R.string.lbl_mentions_tags)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFollowers: String? = MyApp.getInstance().resources.getString(R.string.lbl_followers)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFromTikpik: String? = MyApp.getInstance().resources.getString(R.string.lbl_from_tikpik)

)
