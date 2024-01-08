package com.vertexrealestateapp.app.modules.myhome.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseFragment
import com.vertexrealestateapp.app.databinding.FragmentMyHomeBinding
import com.vertexrealestateapp.app.modules.addnewpropertyaddress.ui.AddNewPropertyAddressActivity
import com.vertexrealestateapp.app.modules.myhome.`data`.model.ListRowModel
import com.vertexrealestateapp.app.modules.myhome.`data`.viewmodel.MyHomeVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class MyHomeFragment : BaseFragment<FragmentMyHomeBinding>(R.layout.fragment_my_home) {
  private val viewModel: MyHomeVM by viewModels<MyHomeVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val listAdapter = ListAdapter(viewModel.listList.value?:mutableListOf())
    binding.recyclerList.adapter = listAdapter
    listAdapter.setOnItemClickListener(
    object : ListAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ListRowModel) {
        onClickRecyclerList(view, position, item)
      }
    }
    )
    viewModel.listList.observe(requireActivity()) {
      listAdapter.updateData(it)
    }
    binding.myHomeVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      requireActivity().onBackPressed()
    }
    binding.btnAddNewProperty.setOnClickListener {
      val destIntent = AddNewPropertyAddressActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerList(
    view: View,
    position: Int,
    item: ListRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "MY_HOME_FRAGMENT"


    fun getInstance(bundle: Bundle?): MyHomeFragment {
      val fragment = MyHomeFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
