package com.tunecastmusicstreamingpodcastapp.app.modules.albumdetails.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityAlbumDetailsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.albumdetails.`data`.model.AlbumdetailsRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.albumdetails.`data`.viewmodel.AlbumDetailsVM
import com.tunecastmusicstreamingpodcastapp.app.modules.songplay.ui.SongPlayActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class AlbumDetailsActivity :
    BaseActivity<ActivityAlbumDetailsBinding>(R.layout.activity_album_details) {
  private val viewModel: AlbumDetailsVM by viewModels<AlbumDetailsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val albumDetailsAdapter =
    AlbumDetailsAdapter(viewModel.albumDetailsList.value?:mutableListOf())
    binding.recyclerAlbumDetails.adapter = albumDetailsAdapter
    albumDetailsAdapter.setOnItemClickListener(
    object : AlbumDetailsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : AlbumdetailsRowModel) {
        onClickRecyclerAlbumDetails(view, position, item)
      }
    }
    )
    viewModel.albumDetailsList.observe(this) {
      albumDetailsAdapter.updateData(it)
    }
    binding.albumDetailsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnPlay.setOnClickListener {
      val destIntent = SongPlayActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerAlbumDetails(
    view: View,
    position: Int,
    item: AlbumdetailsRowModel
  ): Unit {
    when(view.id) {
      R.id.linearSongCard ->  {
        onClickRecyclerAlbumDetailsLinearSongCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerAlbumDetailsLinearSongCard(
    view: View,
    position: Int,
    item: AlbumdetailsRowModel
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
    }
  }

  companion object {
    const val TAG: String = "ALBUM_DETAILS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, AlbumDetailsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
