package com.comforthotelbookingapp.app.modules.homescreen.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseFragment
import com.comforthotelbookingapp.app.databinding.FragmentHomeScreenBinding
import com.comforthotelbookingapp.app.modules.homescreen.`data`.model.HotelsRowModel
import com.comforthotelbookingapp.app.modules.homescreen.`data`.model.SixtyRowModel
import com.comforthotelbookingapp.app.modules.homescreen.`data`.viewmodel.HomeScreenVM
import com.comforthotelbookingapp.app.modules.recentlybooked.ui.RecentlyBookedActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class HomeScreenFragment : BaseFragment<FragmentHomeScreenBinding>(R.layout.fragment_home_screen) {
  private val viewModel: HomeScreenVM by viewModels<HomeScreenVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val hotelsAdapter = HotelsAdapter(viewModel.hotelsList.value?:mutableListOf())
    binding.recyclerHotels.adapter = hotelsAdapter
    hotelsAdapter.setOnItemClickListener(
    object : HotelsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : HotelsRowModel) {
        onClickRecyclerHotels(view, position, item)
      }
    }
    )
    viewModel.hotelsList.observe(requireActivity()) {
      hotelsAdapter.updateData(it)
    }
    val sixtyAdapter = SixtyAdapter(viewModel.sixtyList.value?:mutableListOf())
    binding.recyclerSixty.adapter = sixtyAdapter
    sixtyAdapter.setOnItemClickListener(
    object : SixtyAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SixtyRowModel) {
        onClickRecyclerSixty(view, position, item)
      }
    }
    )
    viewModel.sixtyList.observe(requireActivity()) {
      sixtyAdapter.updateData(it)
    }
    binding.homeScreenVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.txtSeeAll.setOnClickListener {
      val destIntent = RecentlyBookedActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerHotels(
    view: View,
    position: Int,
    item: HotelsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerSixty(
    view: View,
    position: Int,
    item: SixtyRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "HOME_SCREEN_FRAGMENT"


    fun getInstance(bundle: Bundle?): HomeScreenFragment {
      val fragment = HomeScreenFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
