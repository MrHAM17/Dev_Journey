package com.tikpikshortvideosocialnetworking.app.modules.editprofile.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.facebook.CallbackManager
import com.facebook.FacebookCallback
import com.facebook.FacebookException
import com.facebook.login.LoginManager
import com.facebook.login.LoginResult
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.appcomponents.facebookauth.FacebookHelper
import com.tikpikshortvideosocialnetworking.app.appcomponents.views.ImagePickerFragmentDialog
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityEditProfileBinding
import com.tikpikshortvideosocialnetworking.app.modules.editprofile.`data`.viewmodel.EditProfileVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class EditProfileActivity : BaseActivity<ActivityEditProfileBinding>(R.layout.activity_edit_profile)
    {
  private val viewModel: EditProfileVM by viewModels<EditProfileVM>()

  private var callbackManager: CallbackManager = CallbackManager.Factory.create()


  private val facebookLogin: FacebookHelper = FacebookHelper()


  override fun onActivityResult(
    requestCode: Int,
    resultCode: Int,
    `data`: Intent?
  ): Unit {
    callbackManager.onActivityResult(requestCode, resultCode, data)
    super.onActivityResult(requestCode,resultCode,data)
  }

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.editProfileVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageCategoriesInstagram.setOnClickListener {
      ImagePickerFragmentDialog().show(supportFragmentManager)
      { path ->//TODO HANDLE DATA
      }

    }
    binding.linearAutoLayoutHorizontal4.setOnClickListener {
      LoginManager.getInstance().logInWithReadPermissions(this, listOf("public_profile"))
      facebookLogin.login(callbackManager,object : FacebookCallback<LoginResult> {
        override fun onSuccess(result: LoginResult?) {
        }
        override fun onError(error: FacebookException?) {
        }
        override fun onCancel() {
        }
        })
      }
      binding.imageArrowDown.setOnClickListener {
        finish()
      }
    }

    companion object {
      const val TAG: String = "EDIT_PROFILE_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, EditProfileActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
