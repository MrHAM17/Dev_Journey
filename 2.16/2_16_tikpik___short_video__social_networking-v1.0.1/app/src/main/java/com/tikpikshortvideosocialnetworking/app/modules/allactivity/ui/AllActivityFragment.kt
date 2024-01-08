package com.tikpikshortvideosocialnetworking.app.modules.allactivity.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseFragment
import com.tikpikshortvideosocialnetworking.app.databinding.FragmentAllActivityBinding
import com.tikpikshortvideosocialnetworking.app.modules.allactivity.`data`.model.Followback1RowModel
import com.tikpikshortvideosocialnetworking.app.modules.allactivity.`data`.model.FollowbackRowModel
import com.tikpikshortvideosocialnetworking.app.modules.allactivity.`data`.model.SpinnerChooseModel
import com.tikpikshortvideosocialnetworking.app.modules.allactivity.`data`.viewmodel.AllActivityVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class AllActivityFragment : BaseFragment<FragmentAllActivityBinding>(R.layout.fragment_all_activity)
    {
  private val viewModel: AllActivityVM by viewModels<AllActivityVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    viewModel.spinnerChooseList.value = mutableListOf(
    SpinnerChooseModel("Item1"),
    SpinnerChooseModel("Item2"),
    SpinnerChooseModel("Item3"),
    SpinnerChooseModel("Item4"),
    SpinnerChooseModel("Item5")
    )
    val spinnerChooseAdapter =
    SpinnerChooseAdapter(requireActivity(),R.layout.spinner_item,viewModel.spinnerChooseList.value?:
    mutableListOf())
    binding.spinnerChoose.adapter = spinnerChooseAdapter
    val followBackAdapter = FollowBackAdapter(viewModel.followBackList.value?:mutableListOf())
    binding.recyclerFollowBack.adapter = followBackAdapter
    followBackAdapter.setOnItemClickListener(
    object : FollowBackAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FollowbackRowModel) {
        onClickRecyclerFollowBack(view, position, item)
      }
    }
    )
    viewModel.followBackList.observe(requireActivity()) {
      followBackAdapter.updateData(it)
    }
    val followBack1Adapter =
    FollowBack1Adapter(viewModel.followBack1List.value?:mutableListOf())
    binding.recyclerFollowBack1.adapter = followBack1Adapter
    followBack1Adapter.setOnItemClickListener(
    object : FollowBack1Adapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Followback1RowModel) {
        onClickRecyclerFollowBack1(view, position, item)
      }
    }
    )
    viewModel.followBack1List.observe(requireActivity()) {
      followBack1Adapter.updateData(it)
    }
    binding.allActivityVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerFollowBack(
    view: View,
    position: Int,
    item: FollowbackRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerFollowBack1(
    view: View,
    position: Int,
    item: Followback1RowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "ALL_ACTIVITY_FRAGMENT"


    fun getInstance(bundle: Bundle?): AllActivityFragment {
      val fragment = AllActivityFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
