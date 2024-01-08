package com.fashionistaecommerceapp.app.modules.homecontainer.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.base.BaseActivity
import com.fashionistaecommerceapp.app.databinding.ActivityHomeContainerBinding
import com.fashionistaecommerceapp.app.extensions.loadFragment
import com.fashionistaecommerceapp.app.modules.homecontainer.`data`.viewmodel.HomeContainerVM
import com.fashionistaecommerceapp.app.modules.hometabcontainer.ui.HomeTabContainerFragment
import com.fashionistaecommerceapp.app.modules.mycart.ui.MyCartFragment
import com.fashionistaecommerceapp.app.modules.profile.ui.ProfileFragment
import com.fashionistaecommerceapp.app.modules.search.ui.SearchFragment
import kotlin.String
import kotlin.Unit

class HomeContainerActivity :
    BaseActivity<ActivityHomeContainerBinding>(R.layout.activity_home_container) {
  private val viewModel: HomeContainerVM by viewModels<HomeContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.homeContainerVM = viewModel
    val destFragment = HomeTabContainerFragment.getInstance(null)
    this.loadFragment(
        R.id.fragmentContainer,
        destFragment,
        bundle = destFragment.arguments, 
        tag = HomeTabContainerFragment.TAG, 
        addToBackStack = false, 
        add = false, 
        enter = null, 
        exit = null, 
        )
  }

  override fun setUpClicks(): Unit {
    binding.linearFrame.setOnClickListener {
      val destFragment = HomeTabContainerFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = HomeTabContainerFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.linearFrame1.setOnClickListener {
      val destFragment = SearchFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = SearchFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.linearFrame2.setOnClickListener {
      val destFragment = MyCartFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = MyCartFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.linearFrame3.setOnClickListener {
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
    const val TAG: String = "HOME_CONTAINER_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, HomeContainerActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
