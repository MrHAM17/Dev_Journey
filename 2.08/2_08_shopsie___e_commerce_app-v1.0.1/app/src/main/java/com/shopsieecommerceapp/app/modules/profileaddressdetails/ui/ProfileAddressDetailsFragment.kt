package com.shopsieecommerceapp.app.modules.profileaddressdetails.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseFragment
import com.shopsieecommerceapp.app.databinding.FragmentProfileAddressDetailsBinding
import com.shopsieecommerceapp.app.modules.profileaddressdetails.`data`.model.ProfileaddressdetailsRowModel
import com.shopsieecommerceapp.app.modules.profileaddressdetails.`data`.viewmodel.ProfileAddressDetailsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ProfileAddressDetailsFragment :
    BaseFragment<FragmentProfileAddressDetailsBinding>(R.layout.fragment_profile_address_details) {
  private val viewModel: ProfileAddressDetailsVM by viewModels<ProfileAddressDetailsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val profileAddressdetailsAdapter =
    ProfileAddressdetailsAdapter(viewModel.profileAddressdetailsList.value?:mutableListOf())
    binding.recyclerProfileAddressdetails.adapter = profileAddressdetailsAdapter
    profileAddressdetailsAdapter.setOnItemClickListener(
    object : ProfileAddressdetailsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item :
      ProfileaddressdetailsRowModel) {
        onClickRecyclerProfileAddressdetails(view, position, item)
      }
    }
    )
    viewModel.profileAddressdetailsList.observe(requireActivity()) {
      profileAddressdetailsAdapter.updateData(it)
    }
    binding.profileAddressDetailsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerProfileAddressdetails(
    view: View,
    position: Int,
    item: ProfileaddressdetailsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "PROFILE_ADDRESS_DETAILS_FRAGMENT"

  }
}
