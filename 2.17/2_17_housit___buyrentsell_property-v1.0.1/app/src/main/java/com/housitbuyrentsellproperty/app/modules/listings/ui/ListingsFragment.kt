package com.housitbuyrentsellproperty.app.modules.listings.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseFragment
import com.housitbuyrentsellproperty.app.databinding.FragmentListingsBinding
import com.housitbuyrentsellproperty.app.modules.listings.`data`.model.ListingsRowModel
import com.housitbuyrentsellproperty.app.modules.listings.`data`.viewmodel.ListingsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ListingsFragment : BaseFragment<FragmentListingsBinding>(R.layout.fragment_listings) {
  private val viewModel: ListingsVM by viewModels<ListingsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val listingsAdapter = ListingsAdapter(viewModel.listingsList.value?:mutableListOf())
    binding.recyclerListings.adapter = listingsAdapter
    listingsAdapter.setOnItemClickListener(
    object : ListingsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ListingsRowModel) {
        onClickRecyclerListings(view, position, item)
      }
    }
    )
    viewModel.listingsList.observe(requireActivity()) {
      listingsAdapter.updateData(it)
    }
    binding.listingsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerListings(
    view: View,
    position: Int,
    item: ListingsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "LISTINGS_FRAGMENT"

  }
}
