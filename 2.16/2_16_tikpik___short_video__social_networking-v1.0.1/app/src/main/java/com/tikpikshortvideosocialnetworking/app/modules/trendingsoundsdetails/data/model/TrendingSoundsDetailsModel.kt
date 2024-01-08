package com.tikpikshortvideosocialnetworking.app.modules.trendingsoundsdetails.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class TrendingSoundsDetailsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_trending_sounds)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFavoriteGirlBy: String? =
      MyApp.getInstance().resources.getString(R.string.msg_favorite_girl_by)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance: String? = MyApp.getInstance().resources.getString(R.string.lbl_387_5m_videos)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtName: String? = MyApp.getInstance().resources.getString(R.string.lbl_justin_bieber)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtInformation: String? =
      MyApp.getInstance().resources.getString(R.string.msg_professional_singer)

)
