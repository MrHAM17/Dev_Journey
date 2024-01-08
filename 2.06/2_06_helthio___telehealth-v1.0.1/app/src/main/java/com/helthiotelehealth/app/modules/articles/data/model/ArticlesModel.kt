package com.helthiotelehealth.app.modules.articles.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class ArticlesModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtArticles: String? = MyApp.getInstance().resources.getString(R.string.lbl_articles)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPopularArticles: String? =
      MyApp.getInstance().resources.getString(R.string.msg_popular_articles)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTrendingArticles: String? =
      MyApp.getInstance().resources.getString(R.string.msg_trending_articles)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRelatedArticles: String? =
      MyApp.getInstance().resources.getString(R.string.msg_related_articles)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll1: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)

)
