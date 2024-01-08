package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultssongs.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentSearchResultsSongsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultssongs.`data`.model.SearchresultssongsRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultssongs.`data`.viewmodel.SearchResultsSongsVM
import com.tunecastmusicstreamingpodcastapp.app.modules.songdetails.ui.SongDetailsActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchResultsSongsFragment :
    BaseFragment<FragmentSearchResultsSongsBinding>(R.layout.fragment_search_results_songs) {
  private val viewModel: SearchResultsSongsVM by viewModels<SearchResultsSongsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val searchResultsSongsAdapter =
    SearchResultsSongsAdapter(viewModel.searchResultsSongsList.value?:mutableListOf())
    binding.recyclerSearchResultsSongs.adapter = searchResultsSongsAdapter
    searchResultsSongsAdapter.setOnItemClickListener(
    object : SearchResultsSongsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SearchresultssongsRowModel) {
        onClickRecyclerSearchResultsSongs(view, position, item)
      }
    }
    )
    viewModel.searchResultsSongsList.observe(requireActivity()) {
      searchResultsSongsAdapter.updateData(it)
    }
    binding.searchResultsSongsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSearchResultsSongs(
    view: View,
    position: Int,
    item: SearchresultssongsRowModel
  ): Unit {
    when(view.id) {
      R.id.linearSongTitle ->  {
        val destIntent = SongDetailsActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
    }
  }

  companion object {
    const val TAG: String = "SEARCH_RESULTS_SONGS_FRAGMENT"

  }
}
