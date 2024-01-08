package com.tunecastmusicstreamingpodcastapp.app.modules.playlistdetails.ui

import android.view.View
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityPlaylistDetailsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.playlistdetails.`data`.model.PlaylistdetailsRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.playlistdetails.`data`.viewmodel.PlaylistDetailsVM
import com.tunecastmusicstreamingpodcastapp.app.modules.songplay.ui.SongPlayActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class PlaylistDetailsActivity :
    BaseActivity<ActivityPlaylistDetailsBinding>(R.layout.activity_playlist_details) {
  private val viewModel: PlaylistDetailsVM by viewModels<PlaylistDetailsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val playlistDetailsAdapter =
    PlaylistDetailsAdapter(viewModel.playlistDetailsList.value?:mutableListOf())
    binding.recyclerPlaylistDetails.adapter = playlistDetailsAdapter
    playlistDetailsAdapter.setOnItemClickListener(
    object : PlaylistDetailsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : PlaylistdetailsRowModel) {
        onClickRecyclerPlaylistDetails(view, position, item)
      }
    }
    )
    viewModel.playlistDetailsList.observe(this) {
      playlistDetailsAdapter.updateData(it)
    }
    binding.playlistDetailsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerPlaylistDetails(
    view: View,
    position: Int,
    item: PlaylistdetailsRowModel
  ): Unit {
    when(view.id) {
      R.id.linearSongCard ->  {
        onClickRecyclerPlaylistDetailsLinearSongCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerPlaylistDetailsLinearSongCard(
    view: View,
    position: Int,
    item: PlaylistdetailsRowModel
  ) {
    /** TODO As per your logic, Add constant type for item click.*/
    when(0) {
      0 ->  {
        val destIntent = SongPlayActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      1 ->  {
        val destIntent = SongPlayActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      2 ->  {
        val destIntent = SongPlayActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      3 ->  {
        val destIntent = SongPlayActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      4 ->  {
        val destIntent = SongPlayActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "PLAYLIST_DETAILS_ACTIVITY"

  }
}
