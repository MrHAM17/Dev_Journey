package com.vertexrealestateapp.app.modules.addnewpropertydetails.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityAddNewPropertyDetailsBinding
import com.vertexrealestateapp.app.modules.addnewpropertydetails.`data`.model.AddnewpropertydetailsRowModel
import com.vertexrealestateapp.app.modules.addnewpropertydetails.`data`.viewmodel.AddNewPropertyDetailsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class AddNewPropertyDetailsActivity :
    BaseActivity<ActivityAddNewPropertyDetailsBinding>(R.layout.activity_add_new_property_details) {
  private val viewModel: AddNewPropertyDetailsVM by viewModels<AddNewPropertyDetailsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val addNewPropertyDetailsAdapter =
    AddNewPropertyDetailsAdapter(viewModel.addNewPropertyDetailsList.value?:mutableListOf())
    binding.recyclerAddNewPropertyDetails.adapter = addNewPropertyDetailsAdapter
    addNewPropertyDetailsAdapter.setOnItemClickListener(
    object : AddNewPropertyDetailsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item :
      AddnewpropertydetailsRowModel) {
        onClickRecyclerAddNewPropertyDetails(view, position, item)
      }
    }
    )
    viewModel.addNewPropertyDetailsList.observe(this) {
      addNewPropertyDetailsAdapter.updateData(it)
    }
    binding.addNewPropertyDetailsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerAddNewPropertyDetails(
    view: View,
    position: Int,
    item: AddnewpropertydetailsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "ADD_NEW_PROPERTY_DETAILS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, AddNewPropertyDetailsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
