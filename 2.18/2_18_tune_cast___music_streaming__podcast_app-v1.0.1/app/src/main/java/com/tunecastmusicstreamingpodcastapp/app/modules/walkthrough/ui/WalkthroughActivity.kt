package com.tunecastmusicstreamingpodcastapp.app.modules.walkthrough.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityWalkthroughBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.letsyouin.ui.LetsYouInActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.walkthrough.`data`.viewmodel.WalkthroughVM
import kotlin.String
import kotlin.Unit

class WalkthroughActivity : BaseActivity<ActivityWalkthroughBinding>(R.layout.activity_walkthrough)
    {
  private val viewModel: WalkthroughVM by viewModels<WalkthroughVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.walkthroughVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnGetStarted.setOnClickListener {
      val destIntent = LetsYouInActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "WALKTHROUGH_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, WalkthroughActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
