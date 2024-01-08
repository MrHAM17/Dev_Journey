package com.tikpikshortvideosocialnetworking.app.modules.messagesbox.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityMessagesBoxBinding
import com.tikpikshortvideosocialnetworking.app.modules.messagesbox.`data`.viewmodel.MessagesBoxVM
import com.tikpikshortvideosocialnetworking.app.modules.typemessage.ui.TypeMessageActivity
import kotlin.String
import kotlin.Unit

class MessagesBoxActivity : BaseActivity<ActivityMessagesBoxBinding>(R.layout.activity_messages_box)
    {
  private val viewModel: MessagesBoxVM by viewModels<MessagesBoxVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.messagesBoxVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.etMessage.setOnClickListener {
      val destIntent = TypeMessageActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "MESSAGES_BOX_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, MessagesBoxActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
