package com.vertexrealestateapp.app.modules.addnewpropertyaddress.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityAddNewPropertyAddressBinding
import com.vertexrealestateapp.app.modules.addnewpropertyaddress.`data`.model.SpinnerInputFieldsModel
import com.vertexrealestateapp.app.modules.addnewpropertyaddress.`data`.viewmodel.AddNewPropertyAddressVM
import com.vertexrealestateapp.app.modules.addnewpropertymeetwithaagent.ui.AddNewPropertyMeetWithAAgentActivity
import kotlin.String
import kotlin.Unit

class AddNewPropertyAddressActivity :
    BaseActivity<ActivityAddNewPropertyAddressBinding>(R.layout.activity_add_new_property_address) {
  private val viewModel: AddNewPropertyAddressVM by viewModels<AddNewPropertyAddressVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    viewModel.spinnerInputFieldsList.value = mutableListOf(
    SpinnerInputFieldsModel("Item1"),
    SpinnerInputFieldsModel("Item2"),
    SpinnerInputFieldsModel("Item3"),
    SpinnerInputFieldsModel("Item4"),
    SpinnerInputFieldsModel("Item5")
    )
    val spinnerInputFieldsAdapter =
    SpinnerInputFieldsAdapter(this,R.layout.spinner_item,viewModel.spinnerInputFieldsList.value?:
    mutableListOf())
    binding.spinnerInputFields.adapter = spinnerInputFieldsAdapter
    binding.addNewPropertyAddressVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnNext.setOnClickListener {
      val destIntent = AddNewPropertyMeetWithAAgentActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "ADD_NEW_PROPERTY_ADDRESS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, AddNewPropertyAddressActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
