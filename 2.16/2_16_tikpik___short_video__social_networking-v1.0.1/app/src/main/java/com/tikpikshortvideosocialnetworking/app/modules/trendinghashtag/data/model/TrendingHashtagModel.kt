package com.tikpikshortvideosocialnetworking.app.modules.trendinghashtag.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class TrendingHashtagModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAmazingfood: String? = MyApp.getInstance().resources.getString(R.string.lbl_amazingfood)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTrendingHashtag: String? =
      MyApp.getInstance().resources.getString(R.string.msg_trending_hashtag)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance: String? = MyApp.getInstance().resources.getString(R.string.lbl_827_5m)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBeautiful: String? = MyApp.getInstance().resources.getString(R.string.lbl_beautiful)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTrendingHashtag1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_trending_hashtag)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance1: String? = MyApp.getInstance().resources.getString(R.string.lbl_827_5m)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSongforyou: String? = MyApp.getInstance().resources.getString(R.string.lbl_songforyou)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTrendingHashtag2: String? =
      MyApp.getInstance().resources.getString(R.string.msg_trending_hashtag)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance2: String? = MyApp.getInstance().resources.getString(R.string.lbl_827_5m)

)
