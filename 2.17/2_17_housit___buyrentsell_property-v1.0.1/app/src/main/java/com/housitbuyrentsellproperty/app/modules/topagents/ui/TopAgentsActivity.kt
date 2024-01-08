package com.housitbuyrentsellproperty.app.modules.topagents.ui

import android.view.View
import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityTopAgentsBinding
import com.housitbuyrentsellproperty.app.modules.topagents.`data`.model.Datalist1RowModel
import com.housitbuyrentsellproperty.app.modules.topagents.`data`.viewmodel.TopAgentsVM
import com.housitbuyrentsellproperty.app.modules.topagentsprofiledetailtabcontainer.ui.TopAgentsProfileDetailTabContainerActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class TopAgentsActivity : BaseActivity<ActivityTopAgentsBinding>(R.layout.activity_top_agents) {
  private val viewModel: TopAgentsVM by viewModels<TopAgentsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val dataListAdapter = DataListAdapter(viewModel.dataListList.value?:mutableListOf())
    binding.recyclerDataList.adapter = dataListAdapter
    dataListAdapter.setOnItemClickListener(
    object : DataListAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Datalist1RowModel) {
        onClickRecyclerDataList(view, position, item)
      }
    }
    )
    viewModel.dataListList.observe(this) {
      dataListAdapter.updateData(it)
    }
    binding.topAgentsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerDataList(
    view: View,
    position: Int,
    item: Datalist1RowModel
  ): Unit {
    when(view.id) {
      R.id.linearEstatesCardUser ->  {
        val destIntent = TopAgentsProfileDetailTabContainerActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "TOP_AGENTS_ACTIVITY"

  }
}
