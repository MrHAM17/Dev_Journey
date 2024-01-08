package com.vertexrealestateapp.app.modules.addnewpropertycontact.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.addnewpropertycontact.`data`.model.AddNewPropertyContactModel
import com.vertexrealestateapp.app.modules.dhi0.`data`.model.Dhi0Model
import org.koin.core.KoinComponent

class AddNewPropertyContactVM : ViewModel(), KoinComponent {
  val addNewPropertyContactModel: MutableLiveData<AddNewPropertyContactModel> =
      MutableLiveData(AddNewPropertyContactModel())

  var navArguments: Bundle? = null

  public var includedModel: MutableLiveData<Dhi0Model> = MutableLiveData(Dhi0Model())
}
