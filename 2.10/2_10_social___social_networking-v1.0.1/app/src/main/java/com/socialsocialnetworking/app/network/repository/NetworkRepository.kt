package com.socialsocialnetworking.app.network.repository

import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.di.MyApp
import com.socialsocialnetworking.app.extensions.NoInternetConnection
import com.socialsocialnetworking.app.extensions.isOnline
import com.socialsocialnetworking.app.network.RetrofitServices
import com.socialsocialnetworking.app.network.models.createlogin.CreateLoginRequest
import com.socialsocialnetworking.app.network.models.createlogin.CreateLoginResponse
import com.socialsocialnetworking.app.network.models.createregister.CreateRegisterRequest
import com.socialsocialnetworking.app.network.models.createregister.CreateRegisterResponse
import com.socialsocialnetworking.app.network.resources.ErrorResponse
import com.socialsocialnetworking.app.network.resources.Response
import com.socialsocialnetworking.app.network.resources.SuccessResponse
import java.lang.Exception
import kotlin.String
import org.koin.core.KoinComponent
import org.koin.core.inject

class NetworkRepository : KoinComponent {
  private val retrofitServices: RetrofitServices by inject()

  private val errorMessage: String = "Something went wrong."

  suspend fun createLogin(contentType: String?, createLoginRequest: CreateLoginRequest?):
      Response<CreateLoginResponse> = try {
    val isOnline = MyApp.getInstance().isOnline()
    if(isOnline) {
      SuccessResponse(retrofitServices.createLogin(contentType, createLoginRequest))
    } else {
      val internetException =
          NoInternetConnection(MyApp.getInstance().getString(R.string.no_internet_connection))
      ErrorResponse(internetException.message ?:errorMessage, internetException)
    }
  } catch(e:Exception) {
    e.printStackTrace()
    ErrorResponse(e.message ?:errorMessage, e)
  }

  suspend fun createRegister(contentType: String?, createRegisterRequest: CreateRegisterRequest?):
      Response<CreateRegisterResponse> = try {
    val isOnline = MyApp.getInstance().isOnline()
    if(isOnline) {
      SuccessResponse(retrofitServices.createRegister(contentType, createRegisterRequest))
    } else {
      val internetException =
          NoInternetConnection(MyApp.getInstance().getString(R.string.no_internet_connection))
      ErrorResponse(internetException.message ?:errorMessage, internetException)
    }
  } catch(e:Exception) {
    e.printStackTrace()
    ErrorResponse(e.message ?:errorMessage, e)
  }
}
