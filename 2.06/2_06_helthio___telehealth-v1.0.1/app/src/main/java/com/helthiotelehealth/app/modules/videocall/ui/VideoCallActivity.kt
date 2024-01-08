package com.helthiotelehealth.app.modules.videocall.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseActivity
import com.helthiotelehealth.app.databinding.ActivityVideoCallBinding
import com.helthiotelehealth.app.modules.videocall.`data`.viewmodel.VideoCallVM
import kotlin.String
import kotlin.Unit

class VideoCallActivity : BaseActivity<ActivityVideoCallBinding>(R.layout.activity_video_call) {
  private val viewModel: VideoCallVM by viewModels<VideoCallVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.videoCallVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "VIDEO_CALL_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, VideoCallActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
