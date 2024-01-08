package com.musicplayer.app.modules.homepagecontainer.ui

import androidx.activity.viewModels
import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.base.BaseActivity
import com.musicplayer.app.databinding.ActivityHomePageContainerBinding
import com.musicplayer.app.extensions.loadFragment
import com.musicplayer.app.modules.favorites.ui.FavoritesFragment
import com.musicplayer.app.modules.homepage.ui.HomePageFragment
import com.musicplayer.app.modules.homepagecontainer.`data`.viewmodel.HomePageContainerVM
import com.musicplayer.app.modules.topplaylists.ui.TopPlaylistsFragment
import kotlin.String
import kotlin.Unit

class HomePageContainerActivity :
    BaseActivity<ActivityHomePageContainerBinding>(R.layout.activity_home_page_container) {
  private val viewModel: HomePageContainerVM by viewModels<HomePageContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.homePageContainerVM = viewModel
    val destFragment = HomePageFragment.getInstance(null)
    this.loadFragment(
        R.id.fragmentContainer,
        destFragment,
        bundle = destFragment.arguments, 
        tag = HomePageFragment.TAG, 
        addToBackStack = false, 
        add = false, 
        enter = null, 
        exit = null, 
        )
  }

  override fun setUpClicks(): Unit {
    binding.linearHome.setOnClickListener {
      val destFragment = HomePageFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = HomePageFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.linearFavorites.setOnClickListener {
      val destFragment = FavoritesFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = FavoritesFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.linearTop.setOnClickListener {
      val destFragment = TopPlaylistsFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = TopPlaylistsFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
  }

  companion object {
    const val TAG: String = "HOME_PAGE_CONTAINER_ACTIVITY"

  }
}
