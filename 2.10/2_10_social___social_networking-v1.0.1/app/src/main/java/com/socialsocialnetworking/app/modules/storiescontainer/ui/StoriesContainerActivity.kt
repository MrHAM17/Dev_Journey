package com.socialsocialnetworking.app.modules.storiescontainer.ui

import androidx.activity.viewModels
import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.base.BaseActivity
import com.socialsocialnetworking.app.databinding.ActivityStoriesContainerBinding
import com.socialsocialnetworking.app.extensions.loadFragment
import com.socialsocialnetworking.app.modules.messages.ui.MessagesFragment
import com.socialsocialnetworking.app.modules.notifications.ui.NotificationsFragment
import com.socialsocialnetworking.app.modules.profile.ui.ProfileFragment
import com.socialsocialnetworking.app.modules.stories.ui.StoriesFragment
import com.socialsocialnetworking.app.modules.storiescontainer.`data`.viewmodel.StoriesContainerVM
import kotlin.String
import kotlin.Unit

class StoriesContainerActivity :
    BaseActivity<ActivityStoriesContainerBinding>(R.layout.activity_stories_container) {
  private val viewModel: StoriesContainerVM by viewModels<StoriesContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.storiesContainerVM = viewModel
    val destFragment = StoriesFragment.getInstance(null)
    this.loadFragment(
        R.id.fragmentContainer,
        destFragment,
        bundle = destFragment.arguments, 
        tag = StoriesFragment.TAG, 
        addToBackStack = false, 
        add = false, 
        enter = null, 
        exit = null, 
        )
  }

  override fun setUpClicks(): Unit {
    binding.linearHome.setOnClickListener {
      val destFragment = StoriesFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = StoriesFragment.TAG, 
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
    binding.linearMessages.setOnClickListener {
      val destFragment = MessagesFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = MessagesFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.linearNotifications.setOnClickListener {
      val destFragment = NotificationsFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = NotificationsFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
  }

  companion object {
    const val TAG: String = "STORIES_CONTAINER_ACTIVITY"

  }
}
