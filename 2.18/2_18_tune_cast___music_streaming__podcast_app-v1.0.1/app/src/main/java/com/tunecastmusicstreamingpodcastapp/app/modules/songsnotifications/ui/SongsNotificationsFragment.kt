package com.tunecastmusicstreamingpodcastapp.app.modules.songsnotifications.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentSongsNotificationsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.songsnotifications.`data`.model.SongsnotificationsRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.songsnotifications.`data`.viewmodel.SongsNotificationsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SongsNotificationsFragment :
    BaseFragment<FragmentSongsNotificationsBinding>(R.layout.fragment_songs_notifications) {
  private val viewModel: SongsNotificationsVM by viewModels<SongsNotificationsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val songsNotificationsAdapter =
    SongsNotificationsAdapter(viewModel.songsNotificationsList.value?:mutableListOf())
    binding.recyclerSongsNotifications.adapter = songsNotificationsAdapter
    songsNotificationsAdapter.setOnItemClickListener(
    object : SongsNotificationsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SongsnotificationsRowModel) {
        onClickRecyclerSongsNotifications(view, position, item)
      }
    }
    )
    viewModel.songsNotificationsList.observe(requireActivity()) {
      songsNotificationsAdapter.updateData(it)
    }
    binding.songsNotificationsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSongsNotifications(
    view: View,
    position: Int,
    item: SongsnotificationsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SONGS_NOTIFICATIONS_FRAGMENT"

  }
}
