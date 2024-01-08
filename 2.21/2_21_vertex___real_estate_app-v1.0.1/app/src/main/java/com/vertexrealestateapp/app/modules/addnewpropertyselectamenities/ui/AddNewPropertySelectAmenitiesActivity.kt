package com.vertexrealestateapp.app.modules.addnewpropertyselectamenities.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityAddNewPropertySelectAmenitiesBinding
import com.vertexrealestateapp.app.modules.addnewpropertydetails.ui.AddNewPropertyDetailsActivity
import com.vertexrealestateapp.app.modules.addnewpropertyselectamenities.`data`.viewmodel.AddNewPropertySelectAmenitiesVM
import kotlin.String
import kotlin.Unit

class AddNewPropertySelectAmenitiesActivity :
    BaseActivity<ActivityAddNewPropertySelectAmenitiesBinding>(R.layout.activity_add_new_property_select_amenities)
    {
  private val viewModel: AddNewPropertySelectAmenitiesVM by
      viewModels<AddNewPropertySelectAmenitiesVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.addNewPropertySelectAmenitiesVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnNext.setOnClickListener {
      val destIntent = AddNewPropertyDetailsActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "ADD_NEW_PROPERTY_SELECT_AMENITIES_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, AddNewPropertySelectAmenitiesActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
