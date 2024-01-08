package com.ecommerce.app.network

import com.ecommerce.app.network.models.createlogin.CreateLoginRequest
import com.ecommerce.app.network.models.createlogin.CreateLoginResponse
import com.ecommerce.app.network.models.createregister.CreateRegisterRequest
import com.ecommerce.app.network.models.createregister.CreateRegisterResponse
import com.ecommerce.app.network.models.fetchme.FetchMeResponse
import kotlin.String
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.Header
import retrofit2.http.POST

interface RetrofitServices {
  @GET("/device/api/v1/user/me")
  suspend fun fetchMe(@Header("Content-Type") contentType: String?, @Header("Authorization")
      authorization: String?): FetchMeResponse

  @POST("/device/auth/login")
  suspend fun createLogin(@Header("Content-type") contentType: String?, @Body
      createLoginRequest: CreateLoginRequest?): CreateLoginResponse

  @POST("/device/auth/register")
  suspend fun createRegister(@Header("Content-type") contentType: String?, @Body
      createRegisterRequest: CreateRegisterRequest?): CreateRegisterResponse
}

const val BASE_URL: String = "https://nodedemo.dhiwise.co"
