package com.firstbankdigitalbanking.app.modules.getstarted.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.base.BaseActivity
import com.firstbankdigitalbanking.app.appcomponents.googleauth.GoogleHelper
import com.firstbankdigitalbanking.app.databinding.ActivityGetStartedBinding
import com.firstbankdigitalbanking.app.modules.getstarted.`data`.viewmodel.GetStartedVM
import com.firstbankdigitalbanking.app.modules.login.ui.LoginActivity
import com.firstbankdigitalbanking.app.modules.registers.ui.RegistersActivity
import kotlin.String
import kotlin.Unit

class GetStartedActivity : BaseActivity<ActivityGetStartedBinding>(R.layout.activity_get_started) {
  private val viewModel: GetStartedVM by viewModels<GetStartedVM>()

  private lateinit var googleLogin: GoogleHelper

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.getStartedVM = viewModel
    googleLogin = GoogleHelper(this,
    { accountInfo ->
      },{ error -> 

      })
      googleLogin = GoogleHelper(this,
      { accountInfo ->
        },{ error -> 

        })
      }

      override fun setUpClicks(): Unit {
        binding.onTapRowgoogle.setOnClickListener {
          googleLogin.login()
        }
        binding.btnSignWithGoogle.setOnClickListener {
          googleLogin.login()
        }
        binding.btnRegister.setOnClickListener {
          val destIntent = RegistersActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        binding.btnLogin.setOnClickListener {
          val destIntent = LoginActivity.getIntent(this, null)
          startActivity(destIntent)
        }
      }

      companion object {
        const val TAG: String = "GET_STARTED_ACTIVITY"


        fun getIntent(context: Context, bundle: Bundle?): Intent {
          val destIntent = Intent(context, GetStartedActivity::class.java)
          destIntent.putExtra("bundle", bundle)
          return destIntent
        }
      }
    }
