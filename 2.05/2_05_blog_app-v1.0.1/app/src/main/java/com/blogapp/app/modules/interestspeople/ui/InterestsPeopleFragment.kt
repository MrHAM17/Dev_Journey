package com.blogapp.app.modules.interestspeople.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.blogapp.app.R
import com.blogapp.app.appcomponents.base.BaseFragment
import com.blogapp.app.databinding.FragmentInterestsPeopleBinding
import com.blogapp.app.modules.interestspeople.`data`.model.InterestspeopleRowModel
import com.blogapp.app.modules.interestspeople.`data`.viewmodel.InterestsPeopleVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class InterestsPeopleFragment :
    BaseFragment<FragmentInterestsPeopleBinding>(R.layout.fragment_interests_people) {
  private val viewModel: InterestsPeopleVM by viewModels<InterestsPeopleVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val interestsPeopleAdapter =
    InterestsPeopleAdapter(viewModel.interestsPeopleList.value?:mutableListOf())
    binding.recyclerInterestsPeople.adapter = interestsPeopleAdapter
    interestsPeopleAdapter.setOnItemClickListener(
    object : InterestsPeopleAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : InterestspeopleRowModel) {
        onClickRecyclerInterestsPeople(view, position, item)
      }
    }
    )
    viewModel.interestsPeopleList.observe(requireActivity()) {
      interestsPeopleAdapter.updateData(it)
    }
    binding.interestsPeopleVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerInterestsPeople(
    view: View,
    position: Int,
    item: InterestspeopleRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "INTERESTS_PEOPLE_FRAGMENT"

  }
}
