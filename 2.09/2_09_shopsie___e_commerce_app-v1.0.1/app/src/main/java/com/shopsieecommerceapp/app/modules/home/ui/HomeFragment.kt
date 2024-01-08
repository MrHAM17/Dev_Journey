package com.shopsieecommerceapp.app.modules.home.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseFragment
import com.shopsieecommerceapp.app.databinding.FragmentHomeBinding
import com.shopsieecommerceapp.app.modules.home.`data`.model.EightytwoRowModel
import com.shopsieecommerceapp.app.modules.home.`data`.model.SixtysevenRowModel
import com.shopsieecommerceapp.app.modules.home.`data`.viewmodel.HomeVM
import com.shopsieecommerceapp.app.modules.searchtabcontainer.ui.SearchTabContainerActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class HomeFragment : BaseFragment<FragmentHomeBinding>(R.layout.fragment_home) {
  private val viewModel: HomeVM by viewModels<HomeVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val sixtySevenAdapter = SixtySevenAdapter(viewModel.sixtySevenList.value?:mutableListOf())
    binding.recyclerSixtySeven.adapter = sixtySevenAdapter
    sixtySevenAdapter.setOnItemClickListener(
    object : SixtySevenAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SixtysevenRowModel) {
        onClickRecyclerSixtySeven(view, position, item)
      }
    }
    )
    viewModel.sixtySevenList.observe(requireActivity()) {
      sixtySevenAdapter.updateData(it)
    }
    val eightyTwoAdapter = EightyTwoAdapter(viewModel.eightyTwoList.value?:mutableListOf())
    binding.recyclerEightyTwo.adapter = eightyTwoAdapter
    eightyTwoAdapter.setOnItemClickListener(
    object : EightyTwoAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : EightytwoRowModel) {
        onClickRecyclerEightyTwo(view, position, item)
      }
    }
    )
    viewModel.eightyTwoList.observe(requireActivity()) {
      eightyTwoAdapter.updateData(it)
    }
    binding.homeVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnRewind.setOnClickListener {
      val destIntent = SearchTabContainerActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerSixtySeven(
    view: View,
    position: Int,
    item: SixtysevenRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerEightyTwo(
    view: View,
    position: Int,
    item: EightytwoRowModel
  ): Unit {
    when(view.id) {
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
