package com.musicplayer.app.modules.artist.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.musicplayer.app.modules.artist.`data`.model.ArtistModel
import com.musicplayer.app.modules.artist.`data`.model.RenaissanceRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ArtistVM : ViewModel(), KoinComponent {
  val artistModel: MutableLiveData<ArtistModel> = MutableLiveData(ArtistModel())

  var navArguments: Bundle? = null

  val renaissanceList: MutableLiveData<MutableList<RenaissanceRowModel>> =
      MutableLiveData(mutableListOf())
}
