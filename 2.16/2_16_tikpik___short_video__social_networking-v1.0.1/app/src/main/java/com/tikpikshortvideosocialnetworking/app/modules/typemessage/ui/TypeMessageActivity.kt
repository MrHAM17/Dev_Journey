package com.tikpikshortvideosocialnetworking.app.modules.typemessage.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityTypeMessageBinding
import com.tikpikshortvideosocialnetworking.app.modules.call.ui.CallActivity
import com.tikpikshortvideosocialnetworking.app.modules.typemessage.`data`.viewmodel.TypeMessageVM
import kotlin.String
import kotlin.Unit

class TypeMessageActivity : BaseActivity<ActivityTypeMessageBinding>(R.layout.activity_type_message)
    {
  private val viewModel: TypeMessageVM by viewModels<TypeMessageVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.typeMessageVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageCall.setOnClickListener {
      val destIntent = CallActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "TYPE_MESSAGE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, TypeMessageActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
