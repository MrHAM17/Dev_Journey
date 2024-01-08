package com.tikpikshortvideosocialnetworking.app.modules.switchaccount.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.tikpikshortvideosocialnetworking.app.databinding.BottomsheetSwitchAccountBinding
import com.tikpikshortvideosocialnetworking.app.modules.switchaccount.`data`.model.SwitchaccountRowModel
import com.tikpikshortvideosocialnetworking.app.modules.switchaccount.`data`.viewmodel.SwitchAccountVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SwitchAccountBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetSwitchAccountBinding>(R.layout.bottomsheet_switch_account)
    {
  private val viewModel: SwitchAccountVM by viewModels<SwitchAccountVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val switchAccountAdapter =
    SwitchAccountAdapter(viewModel.switchAccountList.value?:mutableListOf())
    binding.recyclerSwitchAccount.adapter = switchAccountAdapter
    switchAccountAdapter.setOnItemClickListener(
    object : SwitchAccountAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SwitchaccountRowModel) {
        onClickRecyclerSwitchAccount(view, position, item)
      }
    }
    )
    viewModel.switchAccountList.observe(requireActivity()) {
      switchAccountAdapter.updateData(it)
    }
    binding.switchAccountVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSwitchAccount(
    view: View,
    position: Int,
    item: SwitchaccountRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SWITCH_ACCOUNT_BOTTOMSHEET"

  }
}
