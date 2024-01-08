package com.tunecastmusicstreamingpodcastapp.app.modules.songplay.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivitySongPlayBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.songplay.`data`.viewmodel.SongPlayVM
import kotlin.String
import kotlin.Unit

class SongPlayActivity : BaseActivity<ActivitySongPlayBinding>(R.layout.activity_song_play) {
  private val viewModel: SongPlayVM by viewModels<SongPlayVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.songPlayVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "SONG_PLAY_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SongPlayActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
