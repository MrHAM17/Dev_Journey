package com.jusplaymoviestreamingapp.app.modules.chooseplan.ui

import android.view.View
import androidx.activity.viewModels
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseActivity
import com.jusplaymoviestreamingapp.app.databinding.ActivityChoosePlanBinding
import com.jusplaymoviestreamingapp.app.modules.chooseplan.`data`.model.ChooseplanRowModel
import com.jusplaymoviestreamingapp.app.modules.chooseplan.`data`.viewmodel.ChoosePlanVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ChoosePlanActivity : BaseActivity<ActivityChoosePlanBinding>(R.layout.activity_choose_plan) {
  private val viewModel: ChoosePlanVM by viewModels<ChoosePlanVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val choosePlanAdapter = ChoosePlanAdapter(viewModel.choosePlanList.value?:mutableListOf())
    binding.recyclerChoosePlan.adapter = choosePlanAdapter
    choosePlanAdapter.setOnItemClickListener(
    object : ChoosePlanAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ChooseplanRowModel) {
        onClickRecyclerChoosePlan(view, position, item)
      }
    }
    )
    viewModel.choosePlanList.observe(this) {
      choosePlanAdapter.updateData(it)
    }
    binding.choosePlanVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnClose.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerChoosePlan(
    view: View,
    position: Int,
    item: ChooseplanRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "CHOOSE_PLAN_ACTIVITY"

  }
}
