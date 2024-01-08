package com.vertexrealestateapp.app.modules.addnewpropertycontact.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityAddNewPropertyContactBinding
import com.vertexrealestateapp.app.modules.addnewpropertycontact.`data`.viewmodel.AddNewPropertyContactVM
import com.vertexrealestateapp.app.modules.addnewpropertyselectamenities.ui.AddNewPropertySelectAmenitiesActivity
import kotlin.String
import kotlin.Unit

class AddNewPropertyContactActivity :
    BaseActivity<ActivityAddNewPropertyContactBinding>(R.layout.activity_add_new_property_contact) {
  private val viewModel: AddNewPropertyContactVM by viewModels<AddNewPropertyContactVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.addNewPropertyContactVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnNext.setOnClickListener {
      val destIntent = AddNewPropertySelectAmenitiesActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "ADD_NEW_PROPERTY_CONTACT_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, AddNewPropertyContactActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
