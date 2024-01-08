package com.shopsieecommerceapp.app.modules.videochat.ui

import androidx.activity.viewModels
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseActivity
import com.shopsieecommerceapp.app.databinding.ActivityVideoChatBinding
import com.shopsieecommerceapp.app.modules.videochat.`data`.viewmodel.VideoChatVM
import kotlin.String
import kotlin.Unit

class VideoChatActivity : BaseActivity<ActivityVideoChatBinding>(R.layout.activity_video_chat) {
  private val viewModel: VideoChatVM by viewModels<VideoChatVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.videoChatVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "VIDEO_CHAT_ACTIVITY"

  }
}
