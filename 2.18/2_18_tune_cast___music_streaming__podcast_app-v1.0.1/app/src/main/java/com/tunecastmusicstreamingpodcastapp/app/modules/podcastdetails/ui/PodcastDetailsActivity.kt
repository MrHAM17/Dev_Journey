package com.tunecastmusicstreamingpodcastapp.app.modules.podcastdetails.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityPodcastDetailsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.podcastdetails.`data`.model.PodcastdetailsRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.podcastdetails.`data`.viewmodel.PodcastDetailsVM
import com.tunecastmusicstreamingpodcastapp.app.modules.podcastepisodedetails.ui.PodcastEpisodeDetailsActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.songplay.ui.SongPlayActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class PodcastDetailsActivity :
    BaseActivity<ActivityPodcastDetailsBinding>(R.layout.activity_podcast_details) {
  private val viewModel: PodcastDetailsVM by viewModels<PodcastDetailsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val podcastDetailsAdapter =
    PodcastDetailsAdapter(viewModel.podcastDetailsList.value?:mutableListOf())
    binding.recyclerPodcastDetails.adapter = podcastDetailsAdapter
    podcastDetailsAdapter.setOnItemClickListener(
    object : PodcastDetailsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : PodcastdetailsRowModel) {
        onClickRecyclerPodcastDetails(view, position, item)
      }
    }
    )
    viewModel.podcastDetailsList.observe(this) {
      podcastDetailsAdapter.updateData(it)
    }
    binding.podcastDetailsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.txtDescription.setOnClickListener {
      val destIntent = PodcastEpisodeDetailsActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnFollow.setOnClickListener {
      val destIntent = SongPlayActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerPodcastDetails(
    view: View,
    position: Int,
    item: PodcastdetailsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "PODCAST_DETAILS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PodcastDetailsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
