package com.tikpikshortvideosocialnetworking.app.modules.walkthroughthree.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityWalkthroughThreeBinding
import com.tikpikshortvideosocialnetworking.app.modules.letsin.ui.LetsInActivity
import com.tikpikshortvideosocialnetworking.app.modules.walkthroughthree.`data`.viewmodel.WalkthroughThreeVM
import kotlin.String
import kotlin.Unit

class WalkthroughThreeActivity :
    BaseActivity<ActivityWalkthroughThreeBinding>(R.layout.activity_walkthrough_three) {
  private val viewModel: WalkthroughThreeVM by viewModels<WalkthroughThreeVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.walkthroughThreeVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnGetStarted.setOnClickListener {
      val destIntent = LetsInActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "WALKTHROUGH_THREE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, WalkthroughThreeActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
