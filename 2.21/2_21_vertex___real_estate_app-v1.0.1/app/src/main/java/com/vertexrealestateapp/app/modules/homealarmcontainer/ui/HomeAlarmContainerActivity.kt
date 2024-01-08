package com.vertexrealestateapp.app.modules.homealarmcontainer.ui

import androidx.activity.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityHomeAlarmContainerBinding
import com.vertexrealestateapp.app.extensions.loadFragment
import com.vertexrealestateapp.app.modules.homealarm.ui.HomeAlarmFragment
import com.vertexrealestateapp.app.modules.homealarmcontainer.`data`.viewmodel.HomeAlarmContainerVM
import com.vertexrealestateapp.app.modules.homesearch.ui.HomeSearchFragment
import com.vertexrealestateapp.app.modules.message.ui.MessageFragment
import com.vertexrealestateapp.app.modules.myhome.ui.MyHomeFragment
import com.vertexrealestateapp.app.modules.profile.ui.ProfileFragment
import kotlin.String
import kotlin.Unit

class HomeAlarmContainerActivity :
    BaseActivity<ActivityHomeAlarmContainerBinding>(R.layout.activity_home_alarm_container) {
  private val viewModel: HomeAlarmContainerVM by viewModels<HomeAlarmContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.homeAlarmContainerVM = viewModel
    val destFragment = HomeAlarmFragment.getInstance(null)
    this.loadFragment(
        R.id.fragmentContainer,
        destFragment,
        bundle = destFragment.arguments, 
        tag = HomeAlarmFragment.TAG, 
        addToBackStack = false, 
        add = false, 
        enter = null, 
        exit = null, 
        )
  }

  override fun setUpClicks(): Unit {
    binding.linearHome.setOnClickListener {
      val destFragment = HomeAlarmFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = HomeAlarmFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.linearMessage.setOnClickListener {
      val destFragment = MessageFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = MessageFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.linearMyHome.setOnClickListener {
      val destFragment = MyHomeFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = MyHomeFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.linearDiscover.setOnClickListener {
      val destFragment = HomeSearchFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = HomeSearchFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.linearProfile.setOnClickListener {
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
  }

  companion object {
    const val TAG: String = "HOME_ALARM_CONTAINER_ACTIVITY"

  }
}
