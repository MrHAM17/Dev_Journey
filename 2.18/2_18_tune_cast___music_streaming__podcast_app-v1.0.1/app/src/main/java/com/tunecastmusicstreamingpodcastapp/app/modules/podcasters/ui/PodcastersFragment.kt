package com.tunecastmusicstreamingpodcastapp.app.modules.podcasters.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentPodcastersBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.podcasters.`data`.model.PodcastersRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.podcasters.`data`.viewmodel.PodcastersVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class PodcastersFragment : BaseFragment<FragmentPodcastersBinding>(R.layout.fragment_podcasters) {
  private val viewModel: PodcastersVM by viewModels<PodcastersVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val podcastersAdapter = PodcastersAdapter(viewModel.podcastersList.value?:mutableListOf())
    binding.recyclerPodcasters.adapter = podcastersAdapter
    podcastersAdapter.setOnItemClickListener(
    object : PodcastersAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : PodcastersRowModel) {
        onClickRecyclerPodcasters(view, position, item)
      }
    }
    )
    viewModel.podcastersList.observe(requireActivity()) {
      podcastersAdapter.updateData(it)
    }
    binding.podcastersVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerPodcasters(
    view: View,
    position: Int,
    item: PodcastersRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "PODCASTERS_FRAGMENT"

  }
}
