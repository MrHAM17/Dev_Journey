package com.tunecastmusicstreamingpodcastapp.app.modules.audiovideo.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityAudioVideoBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.audiovideo.`data`.viewmodel.AudioVideoVM
import kotlin.String
import kotlin.Unit

class AudioVideoActivity : BaseActivity<ActivityAudioVideoBinding>(R.layout.activity_audio_video) {
  private val viewModel: AudioVideoVM by viewModels<AudioVideoVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.audioVideoVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "AUDIO_VIDEO_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, AudioVideoActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
