package com.tunecastmusicstreamingpodcastapp.app.modules.profile.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.views.DatePickerFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityProfileBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.createnewpin.ui.CreateNewPinActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.homecontainer.ui.HomeContainerActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.profile.`data`.viewmodel.ProfileVM
import java.util.Date
import kotlin.String
import kotlin.Unit

class ProfileActivity : BaseActivity<ActivityProfileBinding>(R.layout.activity_profile) {
  private val viewModel: ProfileVM by viewModels<ProfileVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.profileVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.included.setOnClickListener {
      val destIntent = HomeContainerActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.included.setOnClickListener {
      val destIntent = CreateNewPinActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.included.setOnClickListener {
      val destinationInstance = DatePickerFragment.getInstance()
      destinationInstance.show(this.supportFragmentManager, DatePickerFragment.TAG) {
          selectedDate ->
        onDateSelectedIncluded(selectedDate)
      }
    }
    binding.btnContinue.setOnClickListener {
      val destIntent = CreateNewPinActivity.getIntent(this, null)
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

  private fun onDateSelectedIncluded(selectedDate: Date) {
  }

  companion object {
    const val TAG: String = "PROFILE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ProfileActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
