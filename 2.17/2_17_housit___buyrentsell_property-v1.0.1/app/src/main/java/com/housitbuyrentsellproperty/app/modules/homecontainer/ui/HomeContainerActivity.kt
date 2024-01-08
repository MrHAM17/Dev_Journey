package com.housitbuyrentsellproperty.app.modules.homecontainer.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityHomeContainerBinding
import com.housitbuyrentsellproperty.app.extensions.loadFragment
import com.housitbuyrentsellproperty.app.modules.exampledata.ui.ExampleDataFragment
import com.housitbuyrentsellproperty.app.modules.homecontainer.`data`.viewmodel.HomeContainerVM
import com.housitbuyrentsellproperty.app.modules.hometabcontainer.ui.HomeTabContainerFragment
import com.housitbuyrentsellproperty.app.modules.transactiontabcontainer.ui.TransactionTabContainerFragment
import com.housitbuyrentsellproperty.app.modules.vertical.ui.VerticalFragment
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
    binding.imageFavorite.setOnClickListener {
      val destFragment = VerticalFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = VerticalFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.imageUser.setOnClickListener {
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
    binding.imageRewind.setOnClickListener {
      val destFragment = ExampleDataFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = ExampleDataFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.imageLock.setOnClickListener {
      val destFragment = TransactionTabContainerFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = TransactionTabContainerFragment.TAG, 
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
