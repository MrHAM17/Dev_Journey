package com.musicplayer.app.modules.playlist.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.musicplayer.app.databinding.BottomsheetPlaylistBinding
import com.musicplayer.app.modules.playlist.`data`.model.PlaylistRowModel
import com.musicplayer.app.modules.playlist.`data`.viewmodel.PlaylistVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class PlaylistBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetPlaylistBinding>(R.layout.bottomsheet_playlist) {
  private val viewModel: PlaylistVM by viewModels<PlaylistVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val playlistAdapter = PlaylistAdapter(viewModel.playlistList.value?:mutableListOf())
    binding.recyclerPlaylist.adapter = playlistAdapter
    playlistAdapter.setOnItemClickListener(
    object : PlaylistAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : PlaylistRowModel) {
        onClickRecyclerPlaylist(view, position, item)
      }
    }
    )
    viewModel.playlistList.observe(requireActivity()) {
      playlistAdapter.updateData(it)
    }
    binding.playlistVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerPlaylist(
    view: View,
    position: Int,
    item: PlaylistRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "PLAYLIST_BOTTOMSHEET"


    fun getInstance(bundle: Bundle?): PlaylistBottomsheet {
      val fragment = PlaylistBottomsheet()
      fragment.arguments = bundle
      return fragment
    }
  }
}
