package com.tunecastmusicstreamingpodcastapp.app.modules.followartists.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityFollowArtistsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.followartists.`data`.model.FollowartistsRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.followartists.`data`.viewmodel.FollowArtistsVM
import com.tunecastmusicstreamingpodcastapp.app.modules.homecontainer.ui.HomeContainerActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class FollowArtistsActivity :
    BaseActivity<ActivityFollowArtistsBinding>(R.layout.activity_follow_artists) {
  private val viewModel: FollowArtistsVM by viewModels<FollowArtistsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val followArtistsAdapter =
    FollowArtistsAdapter(viewModel.followArtistsList.value?:mutableListOf())
    binding.recyclerFollowArtists.adapter = followArtistsAdapter
    followArtistsAdapter.setOnItemClickListener(
    object : FollowArtistsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FollowartistsRowModel) {
        onClickRecyclerFollowArtists(view, position, item)
      }
    }
    )
    viewModel.followArtistsList.observe(this) {
      followArtistsAdapter.updateData(it)
    }
    binding.followArtistsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnSkip.setOnClickListener {
      val destIntent = HomeContainerActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnContinue.setOnClickListener {
      val destIntent = HomeContainerActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerFollowArtists(
    view: View,
    position: Int,
    item: FollowartistsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "FOLLOW_ARTISTS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, FollowArtistsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
