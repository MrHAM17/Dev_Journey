package com.musicplayer.app.modules.songmenufull.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.musicplayer.app.modules.songmenufull.`data`.model.OptionsRowModel
import com.musicplayer.app.modules.songmenufull.`data`.model.SongMenuFullModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SongMenuFullVM : ViewModel(), KoinComponent {
  val songMenuFullModel: MutableLiveData<SongMenuFullModel> = MutableLiveData(SongMenuFullModel())

  var navArguments: Bundle? = null

  val optionsList: MutableLiveData<MutableList<OptionsRowModel>> = MutableLiveData(mutableListOf())
}
