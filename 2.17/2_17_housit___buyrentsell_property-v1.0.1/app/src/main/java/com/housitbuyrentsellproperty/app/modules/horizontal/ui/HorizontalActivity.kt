package com.housitbuyrentsellproperty.app.modules.horizontal.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityHorizontalBinding
import com.housitbuyrentsellproperty.app.modules.horizontal.`data`.model.HorizontalRowModel
import com.housitbuyrentsellproperty.app.modules.horizontal.`data`.viewmodel.HorizontalVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class HorizontalActivity : BaseActivity<ActivityHorizontalBinding>(R.layout.activity_horizontal) {
  private val viewModel: HorizontalVM by viewModels<HorizontalVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val horizontalAdapter = HorizontalAdapter(viewModel.horizontalList.value?:mutableListOf())
    binding.recyclerHorizontal.adapter = horizontalAdapter
    horizontalAdapter.setOnItemClickListener(
    object : HorizontalAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : HorizontalRowModel) {
        onClickRecyclerHorizontal(view, position, item)
      }
    }
    )
    viewModel.horizontalList.observe(this) {
      horizontalAdapter.updateData(it)
    }
    binding.horizontalVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerHorizontal(
    view: View,
    position: Int,
    item: HorizontalRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "HORIZONTAL_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, HorizontalActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
