package com.tunecastmusicstreamingpodcastapp.app.modules.mylibrary.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.mylibrary.`data`.model.Frame2RowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.mylibrary.`data`.model.MyLibraryModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class MyLibraryVM : ViewModel(), KoinComponent {
  val myLibraryModel: MutableLiveData<MyLibraryModel> = MutableLiveData(MyLibraryModel())

  var navArguments: Bundle? = null

  val frameList: MutableLiveData<MutableList<Frame2RowModel>> = MutableLiveData(mutableListOf())
}
