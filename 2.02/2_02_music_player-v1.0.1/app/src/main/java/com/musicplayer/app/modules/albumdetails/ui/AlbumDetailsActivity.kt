package com.musicplayer.app.modules.albumdetails.ui

import android.view.View
import androidx.activity.viewModels
import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.base.BaseActivity
import com.musicplayer.app.databinding.ActivityAlbumDetailsBinding
import com.musicplayer.app.modules.albumdetails.`data`.model.SongslistRowModel
import com.musicplayer.app.modules.albumdetails.`data`.viewmodel.AlbumDetailsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class AlbumDetailsActivity :
    BaseActivity<ActivityAlbumDetailsBinding>(R.layout.activity_album_details) {
  private val viewModel: AlbumDetailsVM by viewModels<AlbumDetailsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val songsListAdapter = SongsListAdapter(viewModel.songsListList.value?:mutableListOf())
    binding.recyclerSongsList.adapter = songsListAdapter
    songsListAdapter.setOnItemClickListener(
    object : SongsListAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SongslistRowModel) {
        onClickRecyclerSongsList(view, position, item)
      }
    }
    )
    viewModel.songsListList.observe(this) {
      songsListAdapter.updateData(it)
    }
    binding.albumDetailsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerSongsList(
    view: View,
    position: Int,
    item: SongslistRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "ALBUM_DETAILS_ACTIVITY"

  }
}
