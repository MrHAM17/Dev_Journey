package com.comforthotelbookingapp.app.network.repository

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import com.comforthotelbookingapp.app.extensions.NoInternetConnection
import com.comforthotelbookingapp.app.extensions.isOnline
import com.comforthotelbookingapp.app.network.RetrofitServices
import com.comforthotelbookingapp.app.network.models.createlogin.CreateLoginRequest
import com.comforthotelbookingapp.app.network.models.createlogin.CreateLoginResponse
import com.comforthotelbookingapp.app.network.models.createregister.CreateRegisterRequest
import com.comforthotelbookingapp.app.network.models.createregister.CreateRegisterResponse
import com.comforthotelbookingapp.app.network.models.fetchme.FetchMeResponse
import com.comforthotelbookingapp.app.network.resources.ErrorResponse
import com.comforthotelbookingapp.app.network.resources.Response
import com.comforthotelbookingapp.app.network.resources.SuccessResponse
import java.lang.Exception
import kotlin.String
import org.koin.core.KoinComponent
import org.koin.core.inject

class NetworkRepository : KoinComponent {
  private val retrofitServices: RetrofitServices by inject()

  private val errorMessage: String = "Something went wrong."

  suspend fun fetchMe(contentType: String?, authorization: String?): Response<FetchMeResponse> =
      try {
    val isOnline = MyApp.getInstance().isOnline()
    if(isOnline) {
      SuccessResponse(retrofitServices.fetchMe(contentType, authorization))
    } else {
      val internetException =
          NoInternetConnection(MyApp.getInstance().getString(R.string.no_internet_connection))
      ErrorResponse(internetException.message ?:errorMessage, internetException)
    }
  } catch(e:Exception) {
    e.printStackTrace()
    ErrorResponse(e.message ?:errorMessage, e)
  }

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
