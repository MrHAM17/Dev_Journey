package com.helthiotelehealth.app.modules.homecontainer.ui

import androidx.activity.viewModels
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseActivity
import com.helthiotelehealth.app.databinding.ActivityHomeContainerBinding
import com.helthiotelehealth.app.extensions.loadFragment
import com.helthiotelehealth.app.modules.home.ui.HomeFragment
import com.helthiotelehealth.app.modules.homecontainer.`data`.viewmodel.HomeContainerVM
import com.helthiotelehealth.app.modules.messagehistorytabcontainer.ui.MessageHistoryTabContainerFragment
import com.helthiotelehealth.app.modules.profile.ui.ProfileFragment
import kotlin.String
import kotlin.Unit

class HomeContainerActivity :
    BaseActivity<ActivityHomeContainerBinding>(R.layout.activity_home_container) {
  private val viewModel: HomeContainerVM by viewModels<HomeContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.homeContainerVM = viewModel
    val destFragment = HomeFragment.getInstance(null)
    this.loadFragment(
        R.id.fragmentContainer,
        destFragment,
        bundle = destFragment.arguments, 
        tag = HomeFragment.TAG, 
        addToBackStack = false, 
        add = false, 
        enter = null, 
        exit = null, 
        )
  }

  override fun setUpClicks(): Unit {
    binding.imageHome.setOnClickListener {
      val destFragment = HomeFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = HomeFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.imageMessage.setOnClickListener {
      val destFragment = MessageHistoryTabContainerFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = MessageHistoryTabContainerFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.imageLock.setOnClickListener {
      val destFragment = ProfileFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = ProfileFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.imageCalendar.setOnClickListener {
      // TODO please, add your navigation code here
    }
  }

  companion object {
    const val TAG: String = "HOME_CONTAINER_ACTIVITY"

  }
}
