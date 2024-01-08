package com.tunecastmusicstreamingpodcastapp.app.modules.songsnotifications.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.songsnotifications.`data`.model.SongsNotificationsModel
import com.tunecastmusicstreamingpodcastapp.app.modules.songsnotifications.`data`.model.SongsnotificationsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SongsNotificationsVM : ViewModel(), KoinComponent {
  val songsNotificationsModel: MutableLiveData<SongsNotificationsModel> =
      MutableLiveData(SongsNotificationsModel())

  var navArguments: Bundle? = null

  val songsNotificationsList: MutableLiveData<MutableList<SongsnotificationsRowModel>> =
      MutableLiveData(mutableListOf())
}
