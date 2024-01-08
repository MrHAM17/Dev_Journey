package com.tikpikshortvideosocialnetworking.app.modules.walkthroughone.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityWalkthroughOneBinding
import com.tikpikshortvideosocialnetworking.app.modules.walkthroughone.`data`.viewmodel.WalkthroughOneVM
import com.tikpikshortvideosocialnetworking.app.modules.walkthroughtwo.ui.WalkthroughTwoActivity
import kotlin.String
import kotlin.Unit

class WalkthroughOneActivity :
    BaseActivity<ActivityWalkthroughOneBinding>(R.layout.activity_walkthrough_one) {
  private val viewModel: WalkthroughOneVM by viewModels<WalkthroughOneVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.walkthroughOneVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnNext.setOnClickListener {
      val destIntent = WalkthroughTwoActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "WALKTHROUGH_ONE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, WalkthroughOneActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
