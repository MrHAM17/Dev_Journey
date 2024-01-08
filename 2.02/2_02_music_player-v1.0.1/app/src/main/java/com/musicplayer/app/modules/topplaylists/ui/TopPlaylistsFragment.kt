package com.musicplayer.app.modules.topplaylists.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.base.BaseFragment
import com.musicplayer.app.databinding.FragmentTopPlaylistsBinding
import com.musicplayer.app.modules.list.ui.ListActivity
import com.musicplayer.app.modules.topplaylists.`data`.model.TopplaylistRowModel
import com.musicplayer.app.modules.topplaylists.`data`.viewmodel.TopPlaylistsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class TopPlaylistsFragment :
    BaseFragment<FragmentTopPlaylistsBinding>(R.layout.fragment_top_playlists) {
  private val viewModel: TopPlaylistsVM by viewModels<TopPlaylistsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val topPlaylistAdapter =
    TopPlaylistAdapter(viewModel.topPlaylistList.value?:mutableListOf())
    binding.recyclerTopPlaylist.adapter = topPlaylistAdapter
    topPlaylistAdapter.setOnItemClickListener(
    object : TopPlaylistAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : TopplaylistRowModel) {
        onClickRecyclerTopPlaylist(view, position, item)
      }
    }
    )
    viewModel.topPlaylistList.observe(requireActivity()) {
      topPlaylistAdapter.updateData(it)
    }
    binding.topPlaylistsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerTopPlaylist(
    view: View,
    position: Int,
    item: TopplaylistRowModel
  ): Unit {
    when(view.id) {
      R.id.imageRenaissance -> {
        val destIntent = ListActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
    }
  }

  companion object {
    const val TAG: String = "TOP_PLAYLISTS_FRAGMENT"


    fun getInstance(bundle: Bundle?): TopPlaylistsFragment {
      val fragment = TopPlaylistsFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
