package com.tikpikshortvideosocialnetworking.app.modules.trendinghashtagdetails.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class TrendingHashtagDetailsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? =
      MyApp.getInstance().resources.getString(R.string.msg_trending_hashtag)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAmazingfood: String? = MyApp.getInstance().resources.getString(R.string.lbl_amazingfood)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance: String? = MyApp.getInstance().resources.getString(R.string.lbl_827_5m_videos)

)
