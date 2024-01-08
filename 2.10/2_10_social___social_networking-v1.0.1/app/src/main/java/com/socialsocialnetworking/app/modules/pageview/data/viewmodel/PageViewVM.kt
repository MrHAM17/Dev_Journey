package com.socialsocialnetworking.app.modules.pageview.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.socialsocialnetworking.app.modules.pageview.`data`.model.ConversionsRowModel
import com.socialsocialnetworking.app.modules.pageview.`data`.model.PageViewModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class PageViewVM : ViewModel(), KoinComponent {
  val pageViewModel: MutableLiveData<PageViewModel> = MutableLiveData(PageViewModel())

  var navArguments: Bundle? = null

  val conversionsList: MutableLiveData<MutableList<ConversionsRowModel>> =
      MutableLiveData(mutableListOf())
}
