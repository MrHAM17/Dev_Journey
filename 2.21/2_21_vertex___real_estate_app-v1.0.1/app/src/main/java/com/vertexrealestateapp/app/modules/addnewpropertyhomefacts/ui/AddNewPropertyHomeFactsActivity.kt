package com.vertexrealestateapp.app.modules.addnewpropertyhomefacts.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityAddNewPropertyHomeFactsBinding
import com.vertexrealestateapp.app.modules.addnewpropertycontact.ui.AddNewPropertyContactActivity
import com.vertexrealestateapp.app.modules.addnewpropertyhomefacts.`data`.model.SpinnerInputFieldsModel
import com.vertexrealestateapp.app.modules.addnewpropertyhomefacts.`data`.viewmodel.AddNewPropertyHomeFactsVM
import kotlin.String
import kotlin.Unit

class AddNewPropertyHomeFactsActivity :
    BaseActivity<ActivityAddNewPropertyHomeFactsBinding>(R.layout.activity_add_new_property_home_facts)
    {
  private val viewModel: AddNewPropertyHomeFactsVM by viewModels<AddNewPropertyHomeFactsVM>()

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
    binding.addNewPropertyHomeFactsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnNext.setOnClickListener {
      val destIntent = AddNewPropertyContactActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "ADD_NEW_PROPERTY_HOME_FACTS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, AddNewPropertyHomeFactsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
