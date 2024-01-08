package com.helthiotelehealth.app.modules.articles.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.helthiotelehealth.app.modules.articles.`data`.model.ArticlesModel
import com.helthiotelehealth.app.modules.articles.`data`.model.EightynineRowModel
import com.helthiotelehealth.app.modules.articles.`data`.model.SixtyRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ArticlesVM : ViewModel(), KoinComponent {
  val articlesModel: MutableLiveData<ArticlesModel> = MutableLiveData(ArticlesModel())

  var navArguments: Bundle? = null

  val eightyNineList: MutableLiveData<MutableList<EightynineRowModel>> =
      MutableLiveData(mutableListOf())

  val sixtyList: MutableLiveData<MutableList<SixtyRowModel>> = MutableLiveData(mutableListOf())
}
