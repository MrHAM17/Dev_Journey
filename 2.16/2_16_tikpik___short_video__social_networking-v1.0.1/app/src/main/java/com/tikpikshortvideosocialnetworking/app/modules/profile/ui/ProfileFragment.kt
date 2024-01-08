package com.tikpikshortvideosocialnetworking.app.modules.profile.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseFragment
import com.tikpikshortvideosocialnetworking.app.databinding.FragmentProfileBinding
import com.tikpikshortvideosocialnetworking.app.modules.profile.`data`.model.Autolayoutvertical1RowModel
import com.tikpikshortvideosocialnetworking.app.modules.profile.`data`.viewmodel.ProfileVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ProfileFragment : BaseFragment<FragmentProfileBinding>(R.layout.fragment_profile) {
  private val viewModel: ProfileVM by viewModels<ProfileVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val autoLayoutVerticalAdapter =
    AutoLayoutVerticalAdapter(viewModel.autoLayoutVerticalList.value?:mutableListOf())
    binding.recyclerAutoLayoutVertical.adapter = autoLayoutVerticalAdapter
    autoLayoutVerticalAdapter.setOnItemClickListener(
    object : AutoLayoutVerticalAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Autolayoutvertical1RowModel) {
        onClickRecyclerAutoLayoutVertical(view, position, item)
      }
    }
    )
    viewModel.autoLayoutVerticalList.observe(requireActivity()) {
      autoLayoutVerticalAdapter.updateData(it)
    }
    binding.profileVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerAutoLayoutVertical(
    view: View,
    position: Int,
    item: Autolayoutvertical1RowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "PROFILE_FRAGMENT"


    fun getInstance(bundle: Bundle?): ProfileFragment {
      val fragment = ProfileFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
