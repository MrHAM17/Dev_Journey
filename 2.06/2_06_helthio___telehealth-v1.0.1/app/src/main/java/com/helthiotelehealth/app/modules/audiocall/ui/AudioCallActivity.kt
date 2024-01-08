package com.helthiotelehealth.app.modules.audiocall.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseActivity
import com.helthiotelehealth.app.databinding.ActivityAudioCallBinding
import com.helthiotelehealth.app.modules.audiocall.`data`.viewmodel.AudioCallVM
import kotlin.String
import kotlin.Unit

class AudioCallActivity : BaseActivity<ActivityAudioCallBinding>(R.layout.activity_audio_call) {
  private val viewModel: AudioCallVM by viewModels<AudioCallVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.audioCallVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "AUDIO_CALL_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, AudioCallActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
