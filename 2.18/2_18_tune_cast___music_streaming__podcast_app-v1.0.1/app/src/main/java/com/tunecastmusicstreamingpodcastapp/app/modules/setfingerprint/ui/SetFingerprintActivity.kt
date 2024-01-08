package com.tunecastmusicstreamingpodcastapp.app.modules.setfingerprint.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivitySetFingerprintBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.followartists.ui.FollowArtistsActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.homecontainer.ui.HomeContainerActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.setfingerprint.`data`.viewmodel.SetFingerprintVM
import kotlin.String
import kotlin.Unit

class SetFingerprintActivity :
    BaseActivity<ActivitySetFingerprintBinding>(R.layout.activity_set_fingerprint) {
  private val viewModel: SetFingerprintVM by viewModels<SetFingerprintVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.setFingerprintVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnContinue.setOnClickListener {
      val destIntent = FollowArtistsActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnSkip.setOnClickListener {
      val destIntent = HomeContainerActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "SET_FINGERPRINT_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SetFingerprintActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
