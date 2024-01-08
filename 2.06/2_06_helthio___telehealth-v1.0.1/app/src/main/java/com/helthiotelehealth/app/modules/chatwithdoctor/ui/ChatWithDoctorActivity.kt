package com.helthiotelehealth.app.modules.chatwithdoctor.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseActivity
import com.helthiotelehealth.app.databinding.ActivityChatWithDoctorBinding
import com.helthiotelehealth.app.modules.audiocall.ui.AudioCallActivity
import com.helthiotelehealth.app.modules.chatwithdoctor.`data`.viewmodel.ChatWithDoctorVM
import com.helthiotelehealth.app.modules.videocall.ui.VideoCallActivity
import kotlin.String
import kotlin.Unit

class ChatWithDoctorActivity :
    BaseActivity<ActivityChatWithDoctorBinding>(R.layout.activity_chat_with_doctor) {
  private val viewModel: ChatWithDoctorVM by viewModels<ChatWithDoctorVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.chatWithDoctorVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageUVideo.setOnClickListener {
      val destIntent = VideoCallActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.imageUPhoneAlt.setOnClickListener {
      val destIntent = AudioCallActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "CHAT_WITH_DOCTOR_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ChatWithDoctorActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
