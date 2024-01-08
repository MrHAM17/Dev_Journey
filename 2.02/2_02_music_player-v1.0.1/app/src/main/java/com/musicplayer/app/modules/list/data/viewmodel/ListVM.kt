package com.musicplayer.app.modules.list.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.musicplayer.app.modules.list.`data`.model.ListModel
import com.musicplayer.app.modules.list.`data`.model.ListRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ListVM : ViewModel(), KoinComponent {
  val listModel: MutableLiveData<ListModel> = MutableLiveData(ListModel())

  var navArguments: Bundle? = null

  val listList: MutableLiveData<MutableList<ListRowModel>> = MutableLiveData(mutableListOf())
}
