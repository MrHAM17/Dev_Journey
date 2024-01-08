package com.vertexrealestateapp.app.modules.confirmrequestbottomsheet.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.vertexrealestateapp.app.databinding.BottomsheetConfirmRequestBottomSheetBinding
import com.vertexrealestateapp.app.modules.confirmrequestbottomsheet.`data`.model.ConfirmrequestbottomsheetRowModel
import com.vertexrealestateapp.app.modules.confirmrequestbottomsheet.`data`.viewmodel.ConfirmRequestBottomSheetVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ConfirmRequestBottomSheetBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetConfirmRequestBottomSheetBinding>(R.layout.bottomsheet_confirm_request_bottom_sheet)
    {
  private val viewModel: ConfirmRequestBottomSheetVM by viewModels<ConfirmRequestBottomSheetVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val confirmrequestBottomsheetAdapter =
    ConfirmrequestBottomsheetAdapter(viewModel.confirmrequestBottomsheetList.value?:mutableListOf())
    binding.recyclerConfirmrequestBottomsheet.adapter = confirmrequestBottomsheetAdapter
    confirmrequestBottomsheetAdapter.setOnItemClickListener(
    object : ConfirmrequestBottomsheetAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item :
      ConfirmrequestbottomsheetRowModel) {
        onClickRecyclerConfirmrequestBottomsheet(view, position, item)
      }
    }
    )
    viewModel.confirmrequestBottomsheetList.observe(requireActivity()) {
      confirmrequestBottomsheetAdapter.updateData(it)
    }
    binding.confirmRequestBottomSheetVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnIcon.setOnClickListener {
      dismiss()
    }
  }

  fun onClickRecyclerConfirmrequestBottomsheet(
    view: View,
    position: Int,
    item: ConfirmrequestbottomsheetRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "CONFIRM_REQUEST_BOTTOM_SHEET_BOTTOMSHEET"


    fun getInstance(bundle: Bundle?): ConfirmRequestBottomSheetBottomsheet {
      val fragment = ConfirmRequestBottomSheetBottomsheet()
      fragment.arguments = bundle
      return fragment
    }
  }
}
