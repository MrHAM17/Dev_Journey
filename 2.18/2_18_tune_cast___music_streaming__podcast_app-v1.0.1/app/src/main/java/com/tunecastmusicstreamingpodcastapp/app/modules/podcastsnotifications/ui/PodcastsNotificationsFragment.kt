package com.tunecastmusicstreamingpodcastapp.app.modules.podcastsnotifications.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentPodcastsNotificationsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.podcastsnotifications.`data`.model.PodcastsnotificationsRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.podcastsnotifications.`data`.viewmodel.PodcastsNotificationsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class PodcastsNotificationsFragment :
    BaseFragment<FragmentPodcastsNotificationsBinding>(R.layout.fragment_podcasts_notifications) {
  private val viewModel: PodcastsNotificationsVM by viewModels<PodcastsNotificationsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val podcastsNotificationsAdapter =
    PodcastsNotificationsAdapter(viewModel.podcastsNotificationsList.value?:mutableListOf())
    binding.recyclerPodcastsNotifications.adapter = podcastsNotificationsAdapter
    podcastsNotificationsAdapter.setOnItemClickListener(
    object : PodcastsNotificationsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item :
      PodcastsnotificationsRowModel) {
        onClickRecyclerPodcastsNotifications(view, position, item)
      }
    }
    )
    viewModel.podcastsNotificationsList.observe(requireActivity()) {
      podcastsNotificationsAdapter.updateData(it)
    }
    binding.podcastsNotificationsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerPodcastsNotifications(
    view: View,
    position: Int,
    item: PodcastsnotificationsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "PODCASTS_NOTIFICATIONS_FRAGMENT"

  }
}
