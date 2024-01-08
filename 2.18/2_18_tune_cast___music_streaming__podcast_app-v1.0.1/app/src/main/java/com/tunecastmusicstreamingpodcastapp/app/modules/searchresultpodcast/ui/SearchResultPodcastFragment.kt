package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultpodcast.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentSearchResultPodcastBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.podcastdetails.ui.PodcastDetailsActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultpodcast.`data`.model.FiftynineRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultpodcast.`data`.model.Frame4RowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultpodcast.`data`.viewmodel.SearchResultPodcastVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchResultPodcastFragment :
    BaseFragment<FragmentSearchResultPodcastBinding>(R.layout.fragment_search_result_podcast) {
  private val viewModel: SearchResultPodcastVM by viewModels<SearchResultPodcastVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val frameAdapter = FrameAdapter(viewModel.frameList.value?:mutableListOf())
    binding.recyclerFrame.adapter = frameAdapter
    frameAdapter.setOnItemClickListener(
    object : FrameAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Frame4RowModel) {
        onClickRecyclerFrame(view, position, item)
      }
    }
    )
    viewModel.frameList.observe(requireActivity()) {
      frameAdapter.updateData(it)
    }
    val fiftyNineAdapter = FiftyNineAdapter(viewModel.fiftyNineList.value?:mutableListOf())
    binding.recyclerFiftyNine.adapter = fiftyNineAdapter
    fiftyNineAdapter.setOnItemClickListener(
    object : FiftyNineAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FiftynineRowModel) {
        onClickRecyclerFiftyNine(view, position, item)
      }
    }
    )
    viewModel.fiftyNineList.observe(requireActivity()) {
      fiftyNineAdapter.updateData(it)
    }
    binding.searchResultPodcastVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerFrame(
    view: View,
    position: Int,
    item: Frame4RowModel
  ): Unit {
    when(view.id) {
      R.id.linearPodcastCard ->  {
        val destIntent = PodcastDetailsActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
    }
  }

  fun onClickRecyclerFiftyNine(
    view: View,
    position: Int,
    item: FiftynineRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SEARCH_RESULT_PODCAST_FRAGMENT"

  }
}
