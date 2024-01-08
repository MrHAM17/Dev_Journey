package com.musicplayer.app.modules.artists.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.musicplayer.app.modules.artists.`data`.model.ArtistRowModel
import com.musicplayer.app.modules.artists.`data`.model.ArtistsModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ArtistsVM : ViewModel(), KoinComponent {
  val artistsModel: MutableLiveData<ArtistsModel> = MutableLiveData(ArtistsModel())

  var navArguments: Bundle? = null

  val artistList: MutableLiveData<MutableList<ArtistRowModel>> = MutableLiveData(mutableListOf())
}
