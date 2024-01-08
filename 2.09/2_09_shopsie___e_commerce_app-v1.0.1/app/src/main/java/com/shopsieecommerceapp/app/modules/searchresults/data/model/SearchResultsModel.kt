package com.shopsieecommerceapp.app.modules.searchresults.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class SearchResultsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPeople: String? = MyApp.getInstance().resources.getString(R.string.lbl_people)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUsername: String? = MyApp.getInstance().resources.getString(R.string.lbl_logan_nasser)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFullname: String? = MyApp.getInstance().resources.getString(R.string.lbl_louisaingram)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUsername1: String? = MyApp.getInstance().resources.getString(R.string.lbl_logan_nasser)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFullname1: String? = MyApp.getInstance().resources.getString(R.string.lbl_louisaingram)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPosts: String? = MyApp.getInstance().resources.getString(R.string.lbl_posts)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtName: String? = MyApp.getInstance().resources.getString(R.string.lbl_katherine_cole)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_5_min_ago)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? = MyApp.getInstance().resources.getString(R.string.msg_the_best_fashion)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel: String? = MyApp.getInstance().resources.getString(R.string.lbl_326)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel1: String? = MyApp.getInstance().resources.getString(R.string.lbl_148)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel2: String? = MyApp.getInstance().resources.getString(R.string.lbl_share)

)
