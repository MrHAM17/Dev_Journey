package com.tunecastmusicstreamingpodcastapp.app.modules.podcastepisodedetails.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityPodcastEpisodeDetailsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.podcastepisodedetails.`data`.viewmodel.PodcastEpisodeDetailsVM
import com.tunecastmusicstreamingpodcastapp.app.modules.songplay.ui.SongPlayActivity
import kotlin.String
import kotlin.Unit

class PodcastEpisodeDetailsActivity :
    BaseActivity<ActivityPodcastEpisodeDetailsBinding>(R.layout.activity_podcast_episode_details) {
  private val viewModel: PodcastEpisodeDetailsVM by viewModels<PodcastEpisodeDetailsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.podcastEpisodeDetailsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnPlay.setOnClickListener {
      val destIntent = SongPlayActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "PODCAST_EPISODE_DETAILS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PodcastEpisodeDetailsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
