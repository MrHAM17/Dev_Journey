package com.tikpikshortvideosocialnetworking.app.modules.postsaddsoundstabcontainer.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.google.android.material.tabs.TabLayoutMediator
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityPostsAddSoundsTabContainerBinding
import com.tikpikshortvideosocialnetworking.app.modules.postsaddsoundstabcontainer.`data`.viewmodel.PostsAddSoundsTabContainerVM
import kotlin.Boolean
import kotlin.String
import kotlin.Unit

class PostsAddSoundsTabContainerActivity :
    BaseActivity<ActivityPostsAddSoundsTabContainerBinding>(R.layout.activity_posts_add_sounds_tab_container)
    {
  private val viewModel: PostsAddSoundsTabContainerVM by viewModels<PostsAddSoundsTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.postsAddSoundsTabContainerVM = viewModel
    val adapter =
    PostsAddSoundsTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = PostsAddSoundsTabContainerActivityPagerAdapter.title[position]
      }.attach()
      setUpSearchViewSearchListener()
    }

    override fun setUpClicks(): Unit {
      binding.imageCategoriesXClose.setOnClickListener {
        finish()
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
        const val TAG: String = "POSTS_ADD_SOUNDS_TAB_CONTAINER_ACTIVITY"


        fun getIntent(context: Context, bundle: Bundle?): Intent {
          val destIntent = Intent(context, PostsAddSoundsTabContainerActivity::class.java)
          destIntent.putExtra("bundle", bundle)
          return destIntent
        }
      }
    }
