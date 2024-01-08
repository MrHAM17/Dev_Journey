package com.tunecastmusicstreamingpodcastapp.app.modules.homecontainer.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityHomeContainerBinding
import com.tunecastmusicstreamingpodcastapp.app.extensions.loadFragment
import com.tunecastmusicstreamingpodcastapp.app.modules.explore.ui.ExploreFragment
import com.tunecastmusicstreamingpodcastapp.app.modules.home.ui.HomeFragment
import com.tunecastmusicstreamingpodcastapp.app.modules.homecontainer.`data`.viewmodel.HomeContainerVM
import com.tunecastmusicstreamingpodcastapp.app.modules.mylibrary.ui.MyLibraryFragment
import com.tunecastmusicstreamingpodcastapp.app.modules.profilesettings.ui.ProfileSettingsFragment
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
    binding.linearHomeTab2.setOnClickListener {
      val destFragment = MyLibraryFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = MyLibraryFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.linearHomeTab1.setOnClickListener {
      val destFragment = ExploreFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = ExploreFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.linearHomeTab.setOnClickListener {
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
    binding.linearHomeTab.setOnClickListener {
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
    binding.linearHomeTab3.setOnClickListener {
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
    const val TAG: String = "HOME_CONTAINER_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, HomeContainerActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
