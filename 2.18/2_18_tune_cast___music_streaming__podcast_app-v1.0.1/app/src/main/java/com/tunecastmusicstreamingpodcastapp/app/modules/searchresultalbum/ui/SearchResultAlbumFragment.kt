package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultalbum.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentSearchResultAlbumBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.albumdetails.ui.AlbumDetailsActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultalbum.`data`.model.SearchresultalbumRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultalbum.`data`.viewmodel.SearchResultAlbumVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchResultAlbumFragment :
    BaseFragment<FragmentSearchResultAlbumBinding>(R.layout.fragment_search_result_album) {
  private val viewModel: SearchResultAlbumVM by viewModels<SearchResultAlbumVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val searchResultAlbumAdapter =
    SearchResultAlbumAdapter(viewModel.searchResultAlbumList.value?:mutableListOf())
    binding.recyclerSearchResultAlbum.adapter = searchResultAlbumAdapter
    searchResultAlbumAdapter.setOnItemClickListener(
    object : SearchResultAlbumAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SearchresultalbumRowModel) {
        onClickRecyclerSearchResultAlbum(view, position, item)
      }
    }
    )
    viewModel.searchResultAlbumList.observe(requireActivity()) {
      searchResultAlbumAdapter.updateData(it)
    }
    binding.searchResultAlbumVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSearchResultAlbum(
    view: View,
    position: Int,
    item: SearchresultalbumRowModel
  ): Unit {
    when(view.id) {
      R.id.linearCardBig ->  {
        val destIntent = AlbumDetailsActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
    }
  }

  companion object {
    const val TAG: String = "SEARCH_RESULT_ALBUM_FRAGMENT"

  }
}
