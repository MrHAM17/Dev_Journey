package com.vertexrealestateapp.app.modules.homesearch.ui

import android.os.Bundle
import android.view.View
import androidx.appcompat.widget.SearchView
import androidx.fragment.app.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseFragment
import com.vertexrealestateapp.app.databinding.FragmentHomeSearchBinding
import com.vertexrealestateapp.app.modules.filtertabcontainer.ui.FilterTabContainerActivity
import com.vertexrealestateapp.app.modules.homesearch.`data`.model.HomesearchRowModel
import com.vertexrealestateapp.app.modules.homesearch.`data`.viewmodel.HomeSearchVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class HomeSearchFragment : BaseFragment<FragmentHomeSearchBinding>(R.layout.fragment_home_search) {
  private val viewModel: HomeSearchVM by viewModels<HomeSearchVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val homeSearchAdapter = HomeSearchAdapter(viewModel.homeSearchList.value?:mutableListOf())
    binding.recyclerHomeSearch.adapter = homeSearchAdapter
    homeSearchAdapter.setOnItemClickListener(
    object : HomeSearchAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : HomesearchRowModel) {
        onClickRecyclerHomeSearch(view, position, item)
      }
    }
    )
    viewModel.homeSearchList.observe(requireActivity()) {
      homeSearchAdapter.updateData(it)
    }
    binding.homeSearchVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.btnFile.setOnClickListener {
      val destIntent = FilterTabContainerActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerHomeSearch(
    view: View,
    position: Int,
    item: HomesearchRowModel
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
      const val TAG: String = "HOME_SEARCH_FRAGMENT"


      fun getInstance(bundle: Bundle?): HomeSearchFragment {
        val fragment = HomeSearchFragment()
        fragment.arguments = bundle
        return fragment
      }
    }
  }
