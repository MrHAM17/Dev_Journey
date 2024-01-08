package com.housitbuyrentsellproperty.app.modules.summarychangepayment.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.housitbuyrentsellproperty.app.databinding.BottomsheetSummaryChangePaymentBinding
import com.housitbuyrentsellproperty.app.modules.summarychangepayment.`data`.model.Layout2RowModel
import com.housitbuyrentsellproperty.app.modules.summarychangepayment.`data`.viewmodel.SummaryChangePaymentVM
import com.housitbuyrentsellproperty.app.modules.summarysuccess.ui.SummarySuccessBottomsheet
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SummaryChangePaymentBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetSummaryChangePaymentBinding>(R.layout.bottomsheet_summary_change_payment)
    {
  private val viewModel: SummaryChangePaymentVM by viewModels<SummaryChangePaymentVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val layoutAdapter = LayoutAdapter(viewModel.layoutList.value?:mutableListOf())
    binding.recyclerLayout.adapter = layoutAdapter
    layoutAdapter.setOnItemClickListener(
    object : LayoutAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Layout2RowModel) {
        onClickRecyclerLayout(view, position, item)
      }
    }
    )
    viewModel.layoutList.observe(requireActivity()) {
      layoutAdapter.updateData(it)
    }
    binding.summaryChangePaymentVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnSelectPayment.setOnClickListener {
      val destFragment = SummarySuccessBottomsheet.getInstance(null)
      destFragment.show(requireActivity().supportFragmentManager, SummarySuccessBottomsheet.TAG)
    }
  }

  fun onClickRecyclerLayout(
    view: View,
    position: Int,
    item: Layout2RowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SUMMARY_CHANGE_PAYMENT_BOTTOMSHEET"


    fun getInstance(bundle: Bundle?): SummaryChangePaymentBottomsheet {
      val fragment = SummaryChangePaymentBottomsheet()
      fragment.arguments = bundle
      return fragment
    }
  }
}
