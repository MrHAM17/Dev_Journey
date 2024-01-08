package com.hiredjobsearch.app.network.repository

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import com.hiredjobsearch.app.extensions.NoInternetConnection
import com.hiredjobsearch.app.extensions.isOnline
import com.hiredjobsearch.app.network.RetrofitServices
import com.hiredjobsearch.app.network.models.createregister.CreateRegisterRequest
import com.hiredjobsearch.app.network.models.createregister.CreateRegisterResponse
import com.hiredjobsearch.app.network.models.fetchme.FetchMeResponse
import com.hiredjobsearch.app.network.resources.ErrorResponse
import com.hiredjobsearch.app.network.resources.Response
import com.hiredjobsearch.app.network.resources.SuccessResponse
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
