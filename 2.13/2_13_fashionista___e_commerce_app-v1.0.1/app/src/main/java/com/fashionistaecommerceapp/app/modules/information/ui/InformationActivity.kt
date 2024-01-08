package com.fashionistaecommerceapp.app.modules.information.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.base.BaseActivity
import com.fashionistaecommerceapp.app.databinding.ActivityInformationBinding
import com.fashionistaecommerceapp.app.modules.homecontainer.ui.HomeContainerActivity
import com.fashionistaecommerceapp.app.modules.information.`data`.viewmodel.InformationVM
import kotlin.String
import kotlin.Unit

class InformationActivity : BaseActivity<ActivityInformationBinding>(R.layout.activity_information)
    {
  private val viewModel: InformationVM by viewModels<InformationVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.informationVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowDown.setOnClickListener {
      finish()
    }
    binding.btnComplete.setOnClickListener {
      val destIntent = HomeContainerActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "INFORMATION_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, InformationActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
