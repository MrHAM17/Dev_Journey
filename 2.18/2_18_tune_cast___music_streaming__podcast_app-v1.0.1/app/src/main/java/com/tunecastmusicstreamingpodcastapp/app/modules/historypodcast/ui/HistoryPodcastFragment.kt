package com.tunecastmusicstreamingpodcastapp.app.modules.historypodcast.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentHistoryPodcastBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.historypodcast.`data`.model.HistorypodcastRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.historypodcast.`data`.viewmodel.HistoryPodcastVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class HistoryPodcastFragment :
    BaseFragment<FragmentHistoryPodcastBinding>(R.layout.fragment_history_podcast) {
  private val viewModel: HistoryPodcastVM by viewModels<HistoryPodcastVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val historyPodcastAdapter =
    HistoryPodcastAdapter(viewModel.historyPodcastList.value?:mutableListOf())
    binding.recyclerHistoryPodcast.adapter = historyPodcastAdapter
    historyPodcastAdapter.setOnItemClickListener(
    object : HistoryPodcastAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : HistorypodcastRowModel) {
        onClickRecyclerHistoryPodcast(view, position, item)
      }
    }
    )
    viewModel.historyPodcastList.observe(requireActivity()) {
      historyPodcastAdapter.updateData(it)
    }
    binding.historyPodcastVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerHistoryPodcast(
    view: View,
    position: Int,
    item: HistorypodcastRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "HISTORY_PODCAST_FRAGMENT"

  }
}
