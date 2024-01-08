package com.comforthotelbookingapp.app.modules.recentlybooked.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.databinding.ActivityRecentlyBookedBinding
import com.comforthotelbookingapp.app.modules.recentlybooked.`data`.model.RecentlybookedRowModel
import com.comforthotelbookingapp.app.modules.recentlybooked.`data`.viewmodel.RecentlyBookedVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class RecentlyBookedActivity :
    BaseActivity<ActivityRecentlyBookedBinding>(R.layout.activity_recently_booked) {
  private val viewModel: RecentlyBookedVM by viewModels<RecentlyBookedVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val recentlyBookedAdapter =
    RecentlyBookedAdapter(viewModel.recentlyBookedList.value?:mutableListOf())
    binding.recyclerRecentlyBooked.adapter = recentlyBookedAdapter
    recentlyBookedAdapter.setOnItemClickListener(
    object : RecentlyBookedAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : RecentlybookedRowModel) {
        onClickRecyclerRecentlyBooked(view, position, item)
      }
    }
    )
    viewModel.recentlyBookedList.observe(this) {
      recentlyBookedAdapter.updateData(it)
    }
    binding.recentlyBookedVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerRecentlyBooked(
    view: View,
    position: Int,
    item: RecentlybookedRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "RECENTLY_BOOKED_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, RecentlyBookedActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
