package com.jusplaymoviestreamingapp.app.modules.homerecentlywatchedcontainer.ui

import androidx.activity.viewModels
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseActivity
import com.jusplaymoviestreamingapp.app.databinding.ActivityHomeRecentlyWatchedContainerBinding
import com.jusplaymoviestreamingapp.app.extensions.loadFragment
import com.jusplaymoviestreamingapp.app.modules.downloaded.ui.DownloadedFragment
import com.jusplaymoviestreamingapp.app.modules.homerecentlywatched.ui.HomeRecentlyWatchedFragment
import com.jusplaymoviestreamingapp.app.modules.homerecentlywatchedcontainer.`data`.viewmodel.HomeRecentlyWatchedContainerVM
import com.jusplaymoviestreamingapp.app.modules.profile.ui.ProfileFragment
import com.jusplaymoviestreamingapp.app.modules.saved.ui.SavedFragment
import com.jusplaymoviestreamingapp.app.modules.search.ui.SearchFragment
import kotlin.String
import kotlin.Unit

class HomeRecentlyWatchedContainerActivity :
    BaseActivity<ActivityHomeRecentlyWatchedContainerBinding>(R.layout.activity_home_recently_watched_container)
    {
  private val viewModel: HomeRecentlyWatchedContainerVM by
      viewModels<HomeRecentlyWatchedContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.homeRecentlyWatchedContainerVM = viewModel
    val destFragment = HomeRecentlyWatchedFragment.getInstance(null)
    this.loadFragment(
        R.id.fragmentContainer,
        destFragment,
        bundle = destFragment.arguments, 
        tag = HomeRecentlyWatchedFragment.TAG, 
        addToBackStack = false, 
        add = false, 
        enter = null, 
        exit = null, 
        )
  }

  override fun setUpClicks(): Unit {
    binding.linearSaved.setOnClickListener {
      val destFragment = SavedFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = SavedFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.linearSearch.setOnClickListener {
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
    binding.linearMe.setOnClickListener {
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
    binding.linearDownloads.setOnClickListener {
      val destFragment = DownloadedFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = DownloadedFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.linearHome.setOnClickListener {
      val destFragment = HomeRecentlyWatchedFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = HomeRecentlyWatchedFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
  }

  companion object {
    const val TAG: String = "HOME_RECENTLY_WATCHED_CONTAINER_ACTIVITY"

  }
}
