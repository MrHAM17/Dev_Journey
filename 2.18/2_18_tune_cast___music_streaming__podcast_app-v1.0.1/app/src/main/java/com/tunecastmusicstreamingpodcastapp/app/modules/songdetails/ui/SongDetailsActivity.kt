package com.tunecastmusicstreamingpodcastapp.app.modules.songdetails.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivitySongDetailsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.songdetails.`data`.model.SongdetailsRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.songdetails.`data`.viewmodel.SongDetailsVM
import com.tunecastmusicstreamingpodcastapp.app.modules.songplay.ui.SongPlayActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SongDetailsActivity : BaseActivity<ActivitySongDetailsBinding>(R.layout.activity_song_details)
    {
  private val viewModel: SongDetailsVM by viewModels<SongDetailsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val songDetailsAdapter =
    SongDetailsAdapter(viewModel.songDetailsList.value?:mutableListOf())
    binding.recyclerSongDetails.adapter = songDetailsAdapter
    songDetailsAdapter.setOnItemClickListener(
    object : SongDetailsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SongdetailsRowModel) {
        onClickRecyclerSongDetails(view, position, item)
      }
    }
    )
    viewModel.songDetailsList.observe(this) {
      songDetailsAdapter.updateData(it)
    }
    binding.songDetailsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnPlay.setOnClickListener {
      val destIntent = SongPlayActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerSongDetails(
    view: View,
    position: Int,
    item: SongdetailsRowModel
  ): Unit {
    when(view.id) {
      R.id.linearSongCard ->  {
        onClickRecyclerSongDetailsLinearSongCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerSongDetailsLinearSongCard(
    view: View,
    position: Int,
    item: SongdetailsRowModel
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
    const val TAG: String = "SONG_DETAILS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SongDetailsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
