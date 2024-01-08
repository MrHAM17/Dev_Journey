package com.comforthotelbookingapp.app.modules.forgotpassword.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.databinding.RowForgotpasswordBinding
import com.comforthotelbookingapp.app.modules.forgotpassword.`data`.model.ForgotpasswordRowModel
import kotlin.Int
import kotlin.collections.List

class ForgotPasswordAdapter(
  var list: List<ForgotpasswordRowModel>
) : RecyclerView.Adapter<ForgotPasswordAdapter.RowForgotpasswordVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowForgotpasswordVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_forgotpassword,parent,false)
    return RowForgotpasswordVH(view)
  }

  override fun onBindViewHolder(holder: RowForgotpasswordVH, position: Int) {
    val forgotpasswordRowModel = ForgotpasswordRowModel()
    // TODO uncomment following line after integration with data source
    // val forgotpasswordRowModel = list[position]
    holder.binding.forgotpasswordRowModel = forgotpasswordRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ForgotpasswordRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: ForgotpasswordRowModel
    ) {
    }
  }

  inner class RowForgotpasswordVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowForgotpasswordBinding = RowForgotpasswordBinding.bind(itemView)
  }
}
