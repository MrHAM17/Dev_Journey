package com.tikpikshortvideosocialnetworking.app.modules.walkthroughtwo.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityWalkthroughTwoBinding
import com.tikpikshortvideosocialnetworking.app.modules.walkthroughthree.ui.WalkthroughThreeActivity
import com.tikpikshortvideosocialnetworking.app.modules.walkthroughtwo.`data`.viewmodel.WalkthroughTwoVM
import kotlin.String
import kotlin.Unit

class WalkthroughTwoActivity :
    BaseActivity<ActivityWalkthroughTwoBinding>(R.layout.activity_walkthrough_two) {
  private val viewModel: WalkthroughTwoVM by viewModels<WalkthroughTwoVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.walkthroughTwoVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnNext.setOnClickListener {
      val destIntent = WalkthroughThreeActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "WALKTHROUGH_TWO_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, WalkthroughTwoActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
