package com.housitbuyrentsellproperty.app.modules.home.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseFragment
import com.housitbuyrentsellproperty.app.databinding.FragmentHomeBinding
import com.housitbuyrentsellproperty.app.modules.home.`data`.model.HomeRowModel
import com.housitbuyrentsellproperty.app.modules.home.`data`.model.Layout10RowModel
import com.housitbuyrentsellproperty.app.modules.home.`data`.model.Layout11RowModel
import com.housitbuyrentsellproperty.app.modules.home.`data`.model.Layout9RowModel
import com.housitbuyrentsellproperty.app.modules.home.`data`.model.PromotionbannerRowModel
import com.housitbuyrentsellproperty.app.modules.home.`data`.viewmodel.HomeVM
import com.housitbuyrentsellproperty.app.modules.promotion.ui.PromotionActivity
import com.housitbuyrentsellproperty.app.modules.propertydetails.ui.PropertyDetailsActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class HomeFragment : BaseFragment<FragmentHomeBinding>(R.layout.fragment_home) {
  private val viewModel: HomeVM by viewModels<HomeVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val promotionBannerAdapter =
    PromotionBannerAdapter(viewModel.promotionBannerList.value?:mutableListOf())
    binding.recyclerPromotionBanner.adapter = promotionBannerAdapter
    promotionBannerAdapter.setOnItemClickListener(
    object : PromotionBannerAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : PromotionbannerRowModel) {
        onClickRecyclerPromotionBanner(view, position, item)
      }
    }
    )
    viewModel.promotionBannerList.observe(requireActivity()) {
      promotionBannerAdapter.updateData(it)
    }
    val layoutAdapter = LayoutAdapter(viewModel.layoutList.value?:mutableListOf())
    binding.recyclerLayout.adapter = layoutAdapter
    layoutAdapter.setOnItemClickListener(
    object : LayoutAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Layout9RowModel) {
        onClickRecyclerLayout(view, position, item)
      }
    }
    )
    viewModel.layoutList.observe(requireActivity()) {
      layoutAdapter.updateData(it)
    }
    val layout1Adapter = Layout1Adapter(viewModel.layout1List.value?:mutableListOf())
    binding.recyclerLayout1.adapter = layout1Adapter
    layout1Adapter.setOnItemClickListener(
    object : Layout1Adapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Layout10RowModel) {
        onClickRecyclerLayout1(view, position, item)
      }
    }
    )
    viewModel.layout1List.observe(requireActivity()) {
      layout1Adapter.updateData(it)
    }
    val layout2Adapter = Layout2Adapter(viewModel.layout2List.value?:mutableListOf())
    binding.recyclerLayout2.adapter = layout2Adapter
    layout2Adapter.setOnItemClickListener(
    object : Layout2Adapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Layout11RowModel) {
        onClickRecyclerLayout2(view, position, item)
      }
    }
    )
    viewModel.layout2List.observe(requireActivity()) {
      layout2Adapter.updateData(it)
    }
    val homeAdapter = HomeAdapter(viewModel.homeList.value?:mutableListOf())
    binding.recyclerHome.adapter = homeAdapter
    homeAdapter.setOnItemClickListener(
    object : HomeAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : HomeRowModel) {
        onClickRecyclerHome(view, position, item)
      }
    }
    )
    viewModel.homeList.observe(requireActivity()) {
      homeAdapter.updateData(it)
    }
    binding.homeVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerPromotionBanner(
    view: View,
    position: Int,
    item: PromotionbannerRowModel
  ): Unit {
    when(view.id) {
      R.id.frameItemPromotion -> {
        val destIntent = PromotionActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
    }
  }

  fun onClickRecyclerLayout(
    view: View,
    position: Int,
    item: Layout9RowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerLayout1(
    view: View,
    position: Int,
    item: Layout10RowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerLayout2(
    view: View,
    position: Int,
    item: Layout11RowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerHome(
    view: View,
    position: Int,
    item: HomeRowModel
  ): Unit {
    when(view.id) {
      R.id.linearEstatesCardVertical -> {
        val destIntent = PropertyDetailsActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
    }
  }

  companion object {
    const val TAG: String = "HOME_FRAGMENT"


    fun getInstance(bundle: Bundle?): HomeFragment {
      val fragment = HomeFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
