package com.tikpikshortvideosocialnetworking.app.modules.tellusaboutyourself.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityTellUsAboutYourselfBinding
import com.tikpikshortvideosocialnetworking.app.modules.homecontainer.ui.HomeContainerActivity
import com.tikpikshortvideosocialnetworking.app.modules.tellusaboutyourself.`data`.viewmodel.TellUsAboutYourselfVM
import com.tikpikshortvideosocialnetworking.app.modules.whenisyourbirthday.ui.WhenIsYourBirthdayActivity
import kotlin.String
import kotlin.Unit

class TellUsAboutYourselfActivity :
    BaseActivity<ActivityTellUsAboutYourselfBinding>(R.layout.activity_tell_us_about_yourself) {
  private val viewModel: TellUsAboutYourselfVM by viewModels<TellUsAboutYourselfVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.tellUsAboutYourselfVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
    binding.btnSkip.setOnClickListener {
      val destIntent = HomeContainerActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnContinue.setOnClickListener {
      val destIntent = WhenIsYourBirthdayActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "TELL_US_ABOUT_YOURSELF_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, TellUsAboutYourselfActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
