package com.tunecastmusicstreamingpodcastapp.app.modules.artistdetails.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityArtistDetailsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.artistdetails.`data`.model.ArtistdetailsRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.artistdetails.`data`.viewmodel.ArtistDetailsVM
import com.tunecastmusicstreamingpodcastapp.app.modules.songplay.ui.SongPlayActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ArtistDetailsActivity :
    BaseActivity<ActivityArtistDetailsBinding>(R.layout.activity_artist_details) {
  private val viewModel: ArtistDetailsVM by viewModels<ArtistDetailsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val artistDetailsAdapter =
    ArtistDetailsAdapter(viewModel.artistDetailsList.value?:mutableListOf())
    binding.recyclerArtistDetails.adapter = artistDetailsAdapter
    artistDetailsAdapter.setOnItemClickListener(
    object : ArtistDetailsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ArtistdetailsRowModel) {
        onClickRecyclerArtistDetails(view, position, item)
      }
    }
    )
    viewModel.artistDetailsList.observe(this) {
      artistDetailsAdapter.updateData(it)
    }
    binding.artistDetailsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerArtistDetails(
    view: View,
    position: Int,
    item: ArtistdetailsRowModel
  ): Unit {
    when(view.id) {
      R.id.linearSongCard -> {
        onClickRecyclerArtistDetailsLinearSongCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerArtistDetailsLinearSongCard(
    view: View,
    position: Int,
    item: ArtistdetailsRowModel
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
    const val TAG: String = "ARTIST_DETAILS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ArtistDetailsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
