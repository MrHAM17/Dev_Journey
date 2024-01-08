package com.ecommerce.app.modules.explore.ui

import android.os.Bundle
import android.view.View
import androidx.appcompat.widget.SearchView
import androidx.fragment.app.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseFragment
import com.ecommerce.app.databinding.FragmentExploreBinding
import com.ecommerce.app.modules.explore.`data`.model.Categories1RowModel
import com.ecommerce.app.modules.explore.`data`.model.CategoriesRowModel
import com.ecommerce.app.modules.explore.`data`.viewmodel.ExploreVM
import com.ecommerce.app.modules.notification.ui.NotificationActivity
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ExploreFragment : BaseFragment<FragmentExploreBinding>(R.layout.fragment_explore) {
  private val viewModel: ExploreVM by viewModels<ExploreVM>()

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
    val categories1Adapter =
    Categories1Adapter(viewModel.categories1List.value?:mutableListOf())
    binding.recyclerCategories1.adapter = categories1Adapter
    categories1Adapter.setOnItemClickListener(
    object : Categories1Adapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Categories1RowModel) {
        onClickRecyclerCategories1(view, position, item)
      }
    }
    )
    viewModel.categories1List.observe(requireActivity()) {
      categories1Adapter.updateData(it)
    }
    binding.exploreVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.imageNotificationIcon.setOnClickListener {
      val destIntent = NotificationActivity.getIntent(requireActivity(), null)
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

  fun onClickRecyclerCategories1(
    view: View,
    position: Int,
    item: Categories1RowModel
  ): Unit {
    when(view.id) {
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
      const val TAG: String = "EXPLORE_FRAGMENT"


      fun getInstance(bundle: Bundle?): ExploreFragment {
        val fragment = ExploreFragment()
        fragment.arguments = bundle
        return fragment
      }
    }
  }
