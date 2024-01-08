package com.comforthotelbookingapp.app.modules.bookingnametabcontainer.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.databinding.ActivityBookingNameTabContainerBinding
import com.comforthotelbookingapp.app.modules.bookingnametabcontainer.`data`.viewmodel.BookingNameTabContainerVM
import com.google.android.material.tabs.TabLayoutMediator
import kotlin.String
import kotlin.Unit

class BookingNameTabContainerActivity :
    BaseActivity<ActivityBookingNameTabContainerBinding>(R.layout.activity_booking_name_tab_container)
    {
  private val viewModel: BookingNameTabContainerVM by viewModels<BookingNameTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.bookingNameTabContainerVM = viewModel
    val adapter = BookingNameTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = BookingNameTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
      binding.imageArrowDown.setOnClickListener {
        finish()
      }
    }

    companion object {
      const val TAG: String = "BOOKING_NAME_TAB_CONTAINER_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, BookingNameTabContainerActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
