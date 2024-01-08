package com.tikpikshortvideosocialnetworking.app.modules.call.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityCallBinding
import com.tikpikshortvideosocialnetworking.app.modules.call.`data`.viewmodel.CallVM
import kotlin.String
import kotlin.Unit

class CallActivity : BaseActivity<ActivityCallBinding>(R.layout.activity_call) {
  private val viewModel: CallVM by viewModels<CallVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.callVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "CALL_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, CallActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
