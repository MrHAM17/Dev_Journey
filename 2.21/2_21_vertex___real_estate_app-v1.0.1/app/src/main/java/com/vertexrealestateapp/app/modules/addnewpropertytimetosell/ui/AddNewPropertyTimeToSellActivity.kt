package com.vertexrealestateapp.app.modules.addnewpropertytimetosell.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityAddNewPropertyTimeToSellBinding
import com.vertexrealestateapp.app.modules.addnewpropertyreasonsellinghome.ui.AddNewPropertyReasonSellingHomeActivity
import com.vertexrealestateapp.app.modules.addnewpropertytimetosell.`data`.model.AddnewpropertytimetosellRowModel
import com.vertexrealestateapp.app.modules.addnewpropertytimetosell.`data`.viewmodel.AddNewPropertyTimeToSellVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class AddNewPropertyTimeToSellActivity :
    BaseActivity<ActivityAddNewPropertyTimeToSellBinding>(R.layout.activity_add_new_property_time_to_sell)
    {
  private val viewModel: AddNewPropertyTimeToSellVM by viewModels<AddNewPropertyTimeToSellVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val addNewPropertyTimetosellAdapter =
    AddNewPropertyTimetosellAdapter(viewModel.addNewPropertyTimetosellList.value?:mutableListOf())
    binding.recyclerAddNewPropertyTimetosell.adapter = addNewPropertyTimetosellAdapter
    addNewPropertyTimetosellAdapter.setOnItemClickListener(
    object : AddNewPropertyTimetosellAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item :
      AddnewpropertytimetosellRowModel) {
        onClickRecyclerAddNewPropertyTimetosell(view, position, item)
      }
    }
    )
    viewModel.addNewPropertyTimetosellList.observe(this) {
      addNewPropertyTimetosellAdapter.updateData(it)
    }
    binding.addNewPropertyTimeToSellVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnNext.setOnClickListener {
      val destIntent = AddNewPropertyReasonSellingHomeActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerAddNewPropertyTimetosell(
    view: View,
    position: Int,
    item: AddnewpropertytimetosellRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "ADD_NEW_PROPERTY_TIME_TO_SELL_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, AddNewPropertyTimeToSellActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
