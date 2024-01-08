package com.housitbuyrentsellproperty.app.modules.view.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityViewBinding
import com.housitbuyrentsellproperty.app.modules.view.`data`.viewmodel.ViewVM
import kotlin.String
import kotlin.Unit

class ViewActivity : BaseActivity<ActivityViewBinding>(R.layout.activity_view) {
  private val viewModel: ViewVM by viewModels<ViewVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.viewVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "VIEW_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ViewActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
