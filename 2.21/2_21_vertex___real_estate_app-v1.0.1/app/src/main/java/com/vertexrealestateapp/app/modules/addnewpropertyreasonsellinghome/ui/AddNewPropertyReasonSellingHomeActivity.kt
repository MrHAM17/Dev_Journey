package com.vertexrealestateapp.app.modules.addnewpropertyreasonsellinghome.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityAddNewPropertyReasonSellingHomeBinding
import com.vertexrealestateapp.app.modules.addnewpropertydecsription.ui.AddNewPropertyDecsriptionActivity
import com.vertexrealestateapp.app.modules.addnewpropertyreasonsellinghome.`data`.model.AddnewpropertyreasonsellinghomRowModel
import com.vertexrealestateapp.app.modules.addnewpropertyreasonsellinghome.`data`.viewmodel.AddNewPropertyReasonSellingHomeVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class AddNewPropertyReasonSellingHomeActivity :
    BaseActivity<ActivityAddNewPropertyReasonSellingHomeBinding>(R.layout.activity_add_new_property_reason_selling_home)
    {
  private val viewModel: AddNewPropertyReasonSellingHomeVM by
      viewModels<AddNewPropertyReasonSellingHomeVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val addNewPropertyReasonsellinghomAdapter =
    AddNewPropertyReasonsellinghomAdapter(viewModel.addNewPropertyReasonsellinghomList.value?:mutableListOf())
    binding.recyclerAddNewPropertyReasonsellinghom.adapter =
    addNewPropertyReasonsellinghomAdapter
    addNewPropertyReasonsellinghomAdapter.setOnItemClickListener(
    object : AddNewPropertyReasonsellinghomAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item :
      AddnewpropertyreasonsellinghomRowModel) {
        onClickRecyclerAddNewPropertyReasonsellinghom(view, position, item)
      }
    }
    )
    viewModel.addNewPropertyReasonsellinghomList.observe(this) {
      addNewPropertyReasonsellinghomAdapter.updateData(it)
    }
    binding.addNewPropertyReasonSellingHomeVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnNext.setOnClickListener {
      val destIntent = AddNewPropertyDecsriptionActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerAddNewPropertyReasonsellinghom(
    view: View,
    position: Int,
    item: AddnewpropertyreasonsellinghomRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "ADD_NEW_PROPERTY_REASON_SELLING_HOME_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, AddNewPropertyReasonSellingHomeActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
