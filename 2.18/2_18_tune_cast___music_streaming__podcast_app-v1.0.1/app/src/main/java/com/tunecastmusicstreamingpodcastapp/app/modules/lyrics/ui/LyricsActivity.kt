package com.tunecastmusicstreamingpodcastapp.app.modules.lyrics.ui

import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityLyricsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.lyrics.`data`.viewmodel.LyricsVM
import kotlin.String
import kotlin.Unit

class LyricsActivity : BaseActivity<ActivityLyricsBinding>(R.layout.activity_lyrics) {
  private val viewModel: LyricsVM by viewModels<LyricsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.lyricsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "LYRICS_ACTIVITY"

  }
}
