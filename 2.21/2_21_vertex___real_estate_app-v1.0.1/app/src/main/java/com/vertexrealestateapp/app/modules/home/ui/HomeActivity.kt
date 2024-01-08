package com.vertexrealestateapp.app.modules.home.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityHomeBinding
import com.vertexrealestateapp.app.extensions.loadFragment
import com.vertexrealestateapp.app.modules.home.`data`.viewmodel.HomeVM
import com.vertexrealestateapp.app.modules.homesearch.ui.HomeSearchFragment
import com.vertexrealestateapp.app.modules.message.ui.MessageFragment
import com.vertexrealestateapp.app.modules.myhome.ui.MyHomeFragment
import com.vertexrealestateapp.app.modules.notification.ui.NotificationActivity
import com.vertexrealestateapp.app.modules.productdetails.ui.ProductDetailsActivity
import com.vertexrealestateapp.app.modules.profile.ui.ProfileFragment
import kotlin.Boolean
import kotlin.String
import kotlin.Unit

class HomeActivity : BaseActivity<ActivityHomeBinding>(R.layout.activity_home) {
  private val viewModel: HomeVM by viewModels<HomeVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.homeVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
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
    binding.linearHome1.setOnClickListener {
      // TODO please, add your navigation code here
    }
    binding.imageImg1.setOnClickListener {
      val destIntent = ProductDetailsActivity.getIntent(this, null)
      startActivity(destIntent)
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
    binding.btnNotificationLight.setOnClickListener {
      val destIntent = NotificationActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.imageImg.setOnClickListener {
      val destIntent = ProductDetailsActivity.getIntent(this, null)
      startActivity(destIntent)
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

  private fun setUpSearchViewSearchListener(): Unit {
    binding.searchViewSearch.setOnQueryTextListener(object : SearchView.OnQueryTextListener {
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
      const val TAG: String = "HOME_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, HomeActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
