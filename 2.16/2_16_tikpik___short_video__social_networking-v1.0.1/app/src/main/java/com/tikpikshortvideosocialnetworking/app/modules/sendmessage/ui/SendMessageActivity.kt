package com.tikpikshortvideosocialnetworking.app.modules.sendmessage.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivitySendMessageBinding
import com.tikpikshortvideosocialnetworking.app.modules.sendmessage.`data`.viewmodel.SendMessageVM
import kotlin.String
import kotlin.Unit

class SendMessageActivity : BaseActivity<ActivitySendMessageBinding>(R.layout.activity_send_message)
    {
  private val viewModel: SendMessageVM by viewModels<SendMessageVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.sendMessageVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "SEND_MESSAGE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SendMessageActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
