package com.helthiotelehealth.app.modules.home.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseFragment
import com.helthiotelehealth.app.databinding.FragmentHomeBinding
import com.helthiotelehealth.app.modules.finddoctors.ui.FindDoctorsActivity
import com.helthiotelehealth.app.modules.home.`data`.model.CategoriesRowModel
import com.helthiotelehealth.app.modules.home.`data`.model.HomeRowModel
import com.helthiotelehealth.app.modules.home.`data`.viewmodel.HomeVM
import com.helthiotelehealth.app.modules.topdoctor.ui.TopDoctorActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class HomeFragment : BaseFragment<FragmentHomeBinding>(R.layout.fragment_home) {
  private val viewModel: HomeVM by viewModels<HomeVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val categoriesAdapter = CategoriesAdapter(viewModel.categoriesList.value?:mutableListOf())
    binding.recyclerCategories.adapter = categoriesAdapter
    categoriesAdapter.setOnItemClickListener(
    object : CategoriesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : CategoriesRowModel) {
        onClickRecyclerCategories(view, position, item)
      }
    }
    )
    viewModel.categoriesList.observe(requireActivity()) {
      categoriesAdapter.updateData(it)
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
    binding.searchViewSearch.setOnClickListener {
      val destIntent = FindDoctorsActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.txtSeeAll.setOnClickListener {
      val destIntent = TopDoctorActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerCategories(
    view: View,
    position: Int,
    item: CategoriesRowModel
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
