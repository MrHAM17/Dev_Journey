package com.comforthotelbookingapp.app.modules.homescreencontainer.ui

import androidx.activity.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.databinding.ActivityHomeScreenContainerBinding
import com.comforthotelbookingapp.app.extensions.loadFragment
import com.comforthotelbookingapp.app.modules.homescreencontainer.`data`.viewmodel.HomeScreenContainerVM
import com.comforthotelbookingapp.app.modules.homescreentabcontainer.ui.HomeScreenTabContainerFragment
import com.comforthotelbookingapp.app.modules.profilesettings.ui.ProfileSettingsFragment
import com.comforthotelbookingapp.app.modules.searchpagetabcontainer.ui.SearchPageTabContainerFragment
import kotlin.String
import kotlin.Unit

class HomeScreenContainerActivity :
    BaseActivity<ActivityHomeScreenContainerBinding>(R.layout.activity_home_screen_container) {
  private val viewModel: HomeScreenContainerVM by viewModels<HomeScreenContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.homeScreenContainerVM = viewModel
    val destFragment = HomeScreenTabContainerFragment.getInstance(null)
    this.loadFragment(
        R.id.fragmentContainer,
        destFragment,
        bundle = destFragment.arguments, 
        tag = HomeScreenTabContainerFragment.TAG, 
        addToBackStack = false, 
        add = false, 
        enter = null, 
        exit = null, 
        )
  }

  override fun setUpClicks(): Unit {
    binding.linearAutoLayoutVertical1.setOnClickListener {
      val destFragment = SearchPageTabContainerFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = SearchPageTabContainerFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.linearAutoLayoutVertical2.setOnClickListener {
      // TODO please, add your navigation code here
    }
    binding.linearAutoLayoutVertical.setOnClickListener {
      val destFragment = HomeScreenTabContainerFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = HomeScreenTabContainerFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.linearAutoLayoutVertical3.setOnClickListener {
      val destFragment = ProfileSettingsFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = ProfileSettingsFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
  }

  companion object {
    const val TAG: String = "HOME_SCREEN_CONTAINER_ACTIVITY"

  }
}
