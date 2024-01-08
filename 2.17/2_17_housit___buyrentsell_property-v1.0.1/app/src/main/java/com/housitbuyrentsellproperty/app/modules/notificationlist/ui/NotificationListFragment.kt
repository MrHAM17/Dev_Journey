package com.housitbuyrentsellproperty.app.modules.notificationlist.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseFragment
import com.housitbuyrentsellproperty.app.databinding.FragmentNotificationListBinding
import com.housitbuyrentsellproperty.app.modules.notificationlist.`data`.model.CategoryRowModel
import com.housitbuyrentsellproperty.app.modules.notificationlist.`data`.model.ListRowModel
import com.housitbuyrentsellproperty.app.modules.notificationlist.`data`.model.SamuelellaRowModel
import com.housitbuyrentsellproperty.app.modules.notificationlist.`data`.viewmodel.NotificationListVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class NotificationListFragment :
    BaseFragment<FragmentNotificationListBinding>(R.layout.fragment_notification_list) {
  private val viewModel: NotificationListVM by viewModels<NotificationListVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val categoryAdapter = CategoryAdapter(viewModel.categoryList.value?:mutableListOf())
    binding.recyclerCategory.adapter = categoryAdapter
    categoryAdapter.setOnItemClickListener(
    object : CategoryAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : CategoryRowModel) {
        onClickRecyclerCategory(view, position, item)
      }
    }
    )
    viewModel.categoryList.observe(requireActivity()) {
      categoryAdapter.updateData(it)
    }
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
    val samuelEllaAdapter = SamuelEllaAdapter(viewModel.samuelEllaList.value?:mutableListOf())
    binding.recyclerSamuelElla.adapter = samuelEllaAdapter
    samuelEllaAdapter.setOnItemClickListener(
    object : SamuelEllaAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SamuelellaRowModel) {
        onClickRecyclerSamuelElla(view, position, item)
      }
    }
    )
    viewModel.samuelEllaList.observe(requireActivity()) {
      samuelEllaAdapter.updateData(it)
    }
    binding.notificationListVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerCategory(
    view: View,
    position: Int,
    item: CategoryRowModel
  ): Unit {
    when(view.id) {
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

  fun onClickRecyclerSamuelElla(
    view: View,
    position: Int,
    item: SamuelellaRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "NOTIFICATION_LIST_FRAGMENT"

  }
}
