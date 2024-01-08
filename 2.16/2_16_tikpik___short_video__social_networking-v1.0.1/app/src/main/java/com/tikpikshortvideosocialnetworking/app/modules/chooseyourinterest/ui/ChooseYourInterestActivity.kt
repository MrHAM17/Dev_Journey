package com.tikpikshortvideosocialnetworking.app.modules.chooseyourinterest.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityChooseYourInterestBinding
import com.tikpikshortvideosocialnetworking.app.modules.chooseyourinterest.`data`.viewmodel.ChooseYourInterestVM
import com.tikpikshortvideosocialnetworking.app.modules.homecontainer.ui.HomeContainerActivity
import com.tikpikshortvideosocialnetworking.app.modules.tellusaboutyourself.ui.TellUsAboutYourselfActivity
import kotlin.String
import kotlin.Unit

class ChooseYourInterestActivity :
    BaseActivity<ActivityChooseYourInterestBinding>(R.layout.activity_choose_your_interest) {
  private val viewModel: ChooseYourInterestVM by viewModels<ChooseYourInterestVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.chooseYourInterestVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnContinue.setOnClickListener {
      val destIntent = TellUsAboutYourselfActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
    binding.btnSkip.setOnClickListener {
      val destIntent = HomeContainerActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "CHOOSE_YOUR_INTEREST_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ChooseYourInterestActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
