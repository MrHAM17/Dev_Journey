package com.tunecastmusicstreamingpodcastapp.app.modules.playlistdetailsone.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityPlaylistDetailsOneBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.playlistdetailsone.`data`.model.PlaylistdetailsoneRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.playlistdetailsone.`data`.viewmodel.PlaylistDetailsOneVM
import com.tunecastmusicstreamingpodcastapp.app.modules.songplay.ui.SongPlayActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class PlaylistDetailsOneActivity :
    BaseActivity<ActivityPlaylistDetailsOneBinding>(R.layout.activity_playlist_details_one) {
  private val viewModel: PlaylistDetailsOneVM by viewModels<PlaylistDetailsOneVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val playlistDetailsOneAdapter =
    PlaylistDetailsOneAdapter(viewModel.playlistDetailsOneList.value?:mutableListOf())
    binding.recyclerPlaylistDetailsOne.adapter = playlistDetailsOneAdapter
    playlistDetailsOneAdapter.setOnItemClickListener(
    object : PlaylistDetailsOneAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : PlaylistdetailsoneRowModel) {
        onClickRecyclerPlaylistDetailsOne(view, position, item)
      }
    }
    )
    viewModel.playlistDetailsOneList.observe(this) {
      playlistDetailsOneAdapter.updateData(it)
    }
    binding.playlistDetailsOneVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnPlay.setOnClickListener {
      val destIntent = SongPlayActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerPlaylistDetailsOne(
    view: View,
    position: Int,
    item: PlaylistdetailsoneRowModel
  ): Unit {
    when(view.id) {
      R.id.linearSongCard -> {
        onClickRecyclerPlaylistDetailsOneLinearSongCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerPlaylistDetailsOneLinearSongCard(
    view: View,
    position: Int,
    item: PlaylistdetailsoneRowModel
  ): Unit {
    /** TODO As per your logic, Add constant type for item click.*/
    when(0) {
      0 -> {
        val destIntent = SongPlayActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      1 -> {
        val destIntent = SongPlayActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "PLAYLIST_DETAILS_ONE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PlaylistDetailsOneActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
