package com.vertexrealestateapp.app.modules.selectvirtualapp.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivitySelectVirtualAppBinding
import com.vertexrealestateapp.app.modules.selectappalarm.ui.SelectAppAlarmActivity
import com.vertexrealestateapp.app.modules.selectvirtualapp.`data`.model.SelectvirtualappRowModel
import com.vertexrealestateapp.app.modules.selectvirtualapp.`data`.viewmodel.SelectVirtualAppVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SelectVirtualAppActivity :
    BaseActivity<ActivitySelectVirtualAppBinding>(R.layout.activity_select_virtual_app) {
  private val viewModel: SelectVirtualAppVM by viewModels<SelectVirtualAppVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val selectVirtualAppAdapter =
    SelectVirtualAppAdapter(viewModel.selectVirtualAppList.value?:mutableListOf())
    binding.recyclerSelectVirtualApp.adapter = selectVirtualAppAdapter
    selectVirtualAppAdapter.setOnItemClickListener(
    object : SelectVirtualAppAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SelectvirtualappRowModel) {
        onClickRecyclerSelectVirtualApp(view, position, item)
      }
    }
    )
    viewModel.selectVirtualAppList.observe(this) {
      selectVirtualAppAdapter.updateData(it)
    }
    binding.selectVirtualAppVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnNext.setOnClickListener {
      val destIntent = SelectAppAlarmActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerSelectVirtualApp(
    view: View,
    position: Int,
    item: SelectvirtualappRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SELECT_VIRTUAL_APP_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SelectVirtualAppActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
