package com.socialsocialnetworking.app.modules.trendingtabcontainer.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.google.android.material.tabs.TabLayoutMediator
import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.base.BaseActivity
import com.socialsocialnetworking.app.databinding.ActivityTrendingTabContainerBinding
import com.socialsocialnetworking.app.extensions.loadFragment
import com.socialsocialnetworking.app.modules.messages.ui.MessagesFragment
import com.socialsocialnetworking.app.modules.notifications.ui.NotificationsFragment
import com.socialsocialnetworking.app.modules.profile.ui.ProfileFragment
import com.socialsocialnetworking.app.modules.trendingtabcontainer.`data`.model.Stories2RowModel
import com.socialsocialnetworking.app.modules.trendingtabcontainer.`data`.viewmodel.TrendingTabContainerVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class TrendingTabContainerActivity :
    BaseActivity<ActivityTrendingTabContainerBinding>(R.layout.activity_trending_tab_container) {
  private val viewModel: TrendingTabContainerVM by viewModels<TrendingTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val storiesAdapter = StoriesAdapter(viewModel.storiesList.value?:mutableListOf())
    binding.recyclerStories.adapter = storiesAdapter
    storiesAdapter.setOnItemClickListener(
    object : StoriesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Stories2RowModel) {
        onClickRecyclerStories(view, position, item)
      }
    }
    )
    viewModel.storiesList.observe(this) {
      storiesAdapter.updateData(it)
    }
    binding.trendingTabContainerVM = viewModel
    val adapter = TrendingTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = TrendingTabContainerActivityPagerAdapter.title[position]
      }.attach()
      setUpSearchViewSearchListener()
    }

    override fun setUpClicks(): Unit {
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
      binding.linearHome.setOnClickListener {
        // TODO please, add your navigation code here
      }
    }

    fun onClickRecyclerStories(
      view: View,
      position: Int,
      item: Stories2RowModel
    ): Unit {
      when(view.id) {
      }
    }

    private fun setUpSearchViewSearchListener(): Unit {
      binding.searchViewSearch.setOnQueryTextListener(object :
      SearchView.OnQueryTextListener {
        override fun onQueryTextSubmit(p0 : String) : Boolean {
          // Performs search when user hit
          // the search button on the keyboard
          return false
        }
        override fun onQueryTextChange(p0 : String) : Boolean {
          // Start filtering the list as user
          // start entering the characters
          return false
        }
        })
      }

      companion object {
        const val TAG: String = "TRENDING_TAB_CONTAINER_ACTIVITY"

      }
    }
