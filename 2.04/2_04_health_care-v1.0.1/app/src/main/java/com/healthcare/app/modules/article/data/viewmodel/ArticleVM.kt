package com.healthcare.app.modules.article.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.healthcare.app.modules.article.`data`.model.ArticleModel
import com.healthcare.app.modules.article.`data`.model.RelatedarticlesRowModel
import com.healthcare.app.modules.article.`data`.model.TrendingsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ArticleVM : ViewModel(), KoinComponent {
  val articleModel: MutableLiveData<ArticleModel> = MutableLiveData(ArticleModel())

  var navArguments: Bundle? = null

  val trendingsList: MutableLiveData<MutableList<TrendingsRowModel>> =
      MutableLiveData(mutableListOf())

  val relatedArticlesList: MutableLiveData<MutableList<RelatedarticlesRowModel>> =
      MutableLiveData(mutableListOf())
}
