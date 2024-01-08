package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultplaylist.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentSearchResultPlaylistBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.playlistdetailsone.ui.PlaylistDetailsOneActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultplaylist.`data`.model.SearchresultplaylistRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultplaylist.`data`.viewmodel.SearchResultPlaylistVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchResultPlaylistFragment :
    BaseFragment<FragmentSearchResultPlaylistBinding>(R.layout.fragment_search_result_playlist) {
  private val viewModel: SearchResultPlaylistVM by viewModels<SearchResultPlaylistVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val searchResultPlaylistAdapter =
    SearchResultPlaylistAdapter(viewModel.searchResultPlaylistList.value?:mutableListOf())
    binding.recyclerSearchResultPlaylist.adapter = searchResultPlaylistAdapter
    searchResultPlaylistAdapter.setOnItemClickListener(
    object : SearchResultPlaylistAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SearchresultplaylistRowModel) {
        onClickRecyclerSearchResultPlaylist(view, position, item)
      }
    }
    )
    viewModel.searchResultPlaylistList.observe(requireActivity()) {
      searchResultPlaylistAdapter.updateData(it)
    }
    binding.searchResultPlaylistVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSearchResultPlaylist(
    view: View,
    position: Int,
    item: SearchresultplaylistRowModel
  ): Unit {
    when(view.id) {
      R.id.linearCardBig1 ->  {
        val destIntent = PlaylistDetailsOneActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
    }
  }

  companion object {
    const val TAG: String = "SEARCH_RESULT_PLAYLIST_FRAGMENT"

  }
}
