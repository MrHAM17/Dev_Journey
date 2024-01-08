package com.housitbuyrentsellproperty.app.modules.toplocations.ui

import android.view.View
import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityTopLocationsBinding
import com.housitbuyrentsellproperty.app.modules.toplocations.`data`.model.DataRowModel
import com.housitbuyrentsellproperty.app.modules.toplocations.`data`.viewmodel.TopLocationsVM
import com.housitbuyrentsellproperty.app.modules.toplocationslocationdetail.ui.TopLocationsLocationDetailActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class TopLocationsActivity :
    BaseActivity<ActivityTopLocationsBinding>(R.layout.activity_top_locations) {
  private val viewModel: TopLocationsVM by viewModels<TopLocationsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val dataAdapter = DataAdapter(viewModel.dataList.value?:mutableListOf())
    binding.recyclerData.adapter = dataAdapter
    dataAdapter.setOnItemClickListener(
    object : DataAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : DataRowModel) {
        onClickRecyclerData(view, position, item)
      }
    }
    )
    viewModel.dataList.observe(this) {
      dataAdapter.updateData(it)
    }
    binding.topLocationsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerData(
    view: View,
    position: Int,
    item: DataRowModel
  ): Unit {
    when(view.id) {
      R.id.linearEstatesCardLocation ->  {
        val destIntent = TopLocationsLocationDetailActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "TOP_LOCATIONS_ACTIVITY"

  }
}
